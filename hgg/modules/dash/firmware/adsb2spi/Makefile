TARGET=adsb2spi

IVERILOG_DUMPER := lxt2

$(TARGET).vvp: $(TARGET).v $(TARGET)_tf.v
	iverilog -o$@ $+

run: $(TARGET).vvp
	vvp $< -lxt2 

$(TARGET).lxt: $(TARGET).vvp
	vvp $< -lxt2 

wave: $(TARGET).lxt
	gtkwave $(TARGET).lxt

clean:
	rm -f $(TARGET).vvp $(TARGET).lxt
