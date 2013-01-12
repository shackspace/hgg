/*
 * This is a ADS-B sync pattern detection and Manchester decoding module.
 * It was written for XC9536XL CPLD chip by Pawel Kusmierski in 2011.
 *
 * As of present, there are two TODO's left in this document, which are
 * regarding a shift register storing the input samples.
 * Code around them can be tweaked to use either the most recent, or a bit older
 * values of the input. Using the older values should serve the stability, while
 * introducing a delay, it's up to testing whether that's acceptable or not.
 * 
 */

module adsb2spi(clk8M, rst, adsb_in, spi_mosi, spi_sck, spi_ss);
// Our reference clock, 8 times the expected bit rate
input clk8M;
// Active low reset
input rst;
// Output from miniADSB after some filtering and a comparator
input adsb_in;

// SPI interface
output spi_mosi;
output spi_sck;
output spi_ss;

// High if rising edge is detected on the adsb_in line
reg posedge_detect;
// We're clocking in three samples, to avoid meta-stability issues of reading
// a potentially changing and unpropagated signal from the first flip-flop in
// line.
reg [2:0] adsb_shift;
wire clk1M_en;
reg [2:0] clk8M_div;
reg syncing;

reg in_sync;
reg [15:0] sync_pattern;
reg [3:0] sync_pattern_idx;

reg manching;
reg [1:0] manch_data;
reg [1:0] error_count;

reg delay_1ck;
reg spi_mosi;
reg [2:0] spi_sckdiv;
reg [2:0] bits_sent;
wire not_all_eight_bits_sent;
wire spi_ss;

 
// The sync pattern we'll be looking for
initial begin
  sync_pattern = 16'b1010000101000000;
end

always @(posedge clk8M) begin
  if (!rst)
    adsb_shift <= 3'b000;
  else
    adsb_shift[2:0] <= {adsb_shift[1:0], adsb_in};
end

// Detect a rising edge
always @(posedge clk8M) begin
  if (!rst)
    posedge_detect = 1'b0;
  else if (adsb_shift[1] && !adsb_shift[2])
//    TODO compat mode, change to above for production, assure timing is
//    correct.
    // [2] is low and [1] is high -- a rising edge.
      posedge_detect = 1'b1;
  else if (syncing)
    // higher layer takes over
    posedge_detect = 1'b0;
end

// Enable the sampling clock (1MHz) when:
//  * There was a rising edge on the adsb_in line
//  * We've got matches with the sync pattern
//  * We've got manchester data with few enough errors
assign clk1M_en = posedge_detect | syncing | in_sync | manching;

// negated signal happens to be in phase with out sampling time
assign clk1M = ~clk8M_div[2];

always @(posedge clk8M) begin
  if (!rst)
    clk8M_div = 3'b000;
  else if (clk1M_en)
    clk8M_div = clk8M_div + 3'b001;
  else if (!clk1M_en)
    clk8M_div = 3'b000;
end

// Trigger sampling when the clock is 001 and 101:
//        +---+   +--
//        |   |   |
// ... ---+   +---+  ....
// trig ^   ^   ^   ^
// ck2 00001111000011   -- clk8M_div[2]
// ck1 00110011001100
// ck0 01010101010101
assign trigger = (!clk8M_div[2] && !clk8M_div[1] && clk8M_div[0]) || (clk8M_div[2] && !clk8M_div[1] && clk8M_div[0]);

/*
 * Find the synchronization pattern.
 * The sync_pattern_idx is counting down from 15 on every match between the
 * input value and sync_pattern[idx]. When idx reaches zero, it means
 * we've got a complete match.
 */

always @(posedge clk8M) begin
  if (!rst) begin
    sync_pattern_idx = 4'b1111;
    in_sync = 1'b0;
    syncing = 1'b0;
  end else begin
    if (manching == 1'b1)
      in_sync = 1'b0;
    if (trigger == 1'b1)
      // TODO check if adsb_shift[1] is what we're looking for.
      if (sync_pattern[sync_pattern_idx] == adsb_shift[1])
        if (sync_pattern_idx == 4'b0000) begin
          in_sync = 1'b1;
          syncing = 1'b0;
          sync_pattern_idx = 4'b1111;
        end else begin
          sync_pattern_idx = sync_pattern_idx-1;
          syncing = 1'b1;
      end else begin
          sync_pattern_idx = 4'b1111;
          syncing = 1'b0;
    end
  end
end

// Sample the data at every trigger, keep two most recent samples
always @(posedge trigger) begin
	if (!rst) begin
		manch_data <= 2'b00;	
	end else if (manching) begin
		manch_data[1:0] <= {manch_data[0], adsb_in};
	end
end

always @(posedge clk1M) begin
	if (!rst) begin
		spi_mosi <= 1'b0;
		error_count = 2'b00;
		manching = 1'b0;
  end else if (manching) begin
    // If samples are like "_-" or "-_"
    if (manch_data[1] ^ manch_data[0])
      // If the first one is 1 ("-_" == Manchester '1')
			if (manch_data[1])
				spi_mosi <= 1'b1;
			else
				spi_mosi <= 1'b0;
		else begin  // If the samples are "__" or "--"
			spi_mosi <= 1'b0;
			error_count = error_count+1;
      if (error_count == 2'b11) begin
        manching = 1'b0;
        error_count = 2'b00;
      end
		end
	end
  else if (in_sync)
    manching = 1'b1;
end

assign spi_sck = spi_sckdiv[2] & delay_1ck;

// generate spi_sck clock, rounding up to bytes (n*8 clock pulses)
always @(posedge clk8M) begin
  if (!rst) begin
    spi_sckdiv[2:0] = 3'b0;
    delay_1ck = 1'b0;
  end
    else if (manching | not_all_eight_bits_sent) begin
    if (spi_sckdiv == 3'b111)
      delay_1ck = 1'b1;
    spi_sckdiv = spi_sckdiv + 1;
  end else if (!manching && !not_all_eight_bits_sent) begin
      spi_sckdiv = 3'b0;
      delay_1ck = 1'b0;
  end
end

// To mark full ends of bytes.
assign not_all_eight_bits_sent = |bits_sent;
// Keep spi_ss low as long as we're manching or sending out the full bytes.
assign spi_ss = ~(manching | not_all_eight_bits_sent);

always @(negedge spi_sck) begin
  if (!rst)
    bits_sent[2:0] = 3'b0;
  else
    bits_sent = bits_sent + 1;
end

endmodule

