module testbech;

  // STIMULUS
  // reg a = 0, b = 0;
  // initial
  // begin
  //   # 17 a = 1, b = 1;
  //   # 11 a = 1, b = 0;
  //   # 29 a = 1, b = 1;
  //   # 11 a = 1, b = 0;
  //   # 100 $finish(); // [stop(), $finish()]
  // end

  reg [8:0] inputs;
  /* inputs[0] inputs[1] inputs[2] */
  integer i;
  initial
  begin
    for (i=0; i<256; i=i+1)
    begin
      inputs = i;
      #1;
    end
  end

  // CLOCK STIMULUS
  // Make a regular pulsing clock.
  // reg clk = 0;
  // always #5 clk = !clk;

  /* // RESULT FOR DEVICE/DESIGN UNDER TEST */
  wire [4:0] outs;
  // DEVICE/DESIGN UNDER TEST
  fourllader dut (
    .in_b0(inputs[8]), .in_a0(inputs[7]),.in_b1(inputs[6]), .in_a1(inputs[5]),.in_b2(inputs[4]), .in_a2(inputs[3]),.in_b3(inputs[2]), .in_a3(inputs[1]), .in_pa0(inputs[0]),
    .out_pa(outs[4]), .out_s0(outs[3]), .out_s1(outs[2]), .out_s2(outs[1]), .out_s3(outs[0])
  );

  /* // MONITOR */
  // initial
  //   $monitor("Time: %t, a = %d, b = %d => out = %d",
  //     $time, a, b, value);

  // WAVES IN VCD TO OPEN IN GTKWAVE
  initial
  begin
    $dumpfile("top.vcd");
    $dumpvars(0, testbech);
  end


endmodule
