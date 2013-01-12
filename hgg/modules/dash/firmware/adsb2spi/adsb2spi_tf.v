// Reproduces an incoming ADS-B signal, consisting of a sync phase (16 bit)
// and Manchester encoded data.
`timescale 1ns/100ps

module adsb2spi_tf;

reg clk8M;
reg rst;
reg adsb_in;
wire spi_mosi;
wire spi_sck;
wire spi_ss;

adsb2spi DUT(.clk8M(clk8M),
  .rst(rst),
  .adsb_in(adsb_in),
  //Output
  .spi_mosi(spi_mosi),
  .spi_sck(spi_sck),
  .spi_ss(spi_ss)
);

initial begin
  $dumpfile("adsb2spi.lxt");
  $dumpvars(0,adsb2spi_tf);
end

initial begin
  clk8M = 0;
  forever begin
    #62.5 clk8M = ~clk8M;
  end
end

initial begin
  rst = 0;
  adsb_in = 0;
  #100 rst = 1;
  #400 adsb_in = 0;
// fake start
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
// ADS-B sync: 10500010500000
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
// 
  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  // 0
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;

  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;

  // 0
  #500 adsb_in = 0;
  #500 adsb_in = 1;

  // 0
  #500 adsb_in = 1;
  #500 adsb_in = 0;

  #12000 adsb_in = 0;

// another ADS-B sync: 10500010500000
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
// 
  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  // 0
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  // 1
  #500 adsb_in = 1;
  #500 adsb_in = 0;

  #12000 adsb_in = 0;

// Two syncs, no data, testing
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;

  #12000 adsb_in = 0;

// Two syncs, no data, testing
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 1;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;
  #500 adsb_in = 0;


  #12000 adsb_in = 0;

  $finish;
end
endmodule
