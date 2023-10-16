module fourllader (
  // Inputs and output ports; 3 in, 2 out
  input in_b0, in_a0,in_b1, in_a1,in_b2, in_a2,in_b3, in_a3, in_ca0,
  output out_ca, out_s0,  out_s1, out_s2, out_s3
);


// Declaración de señales
 // Un cable del s del sumador 1 al a del sumador2
wire co_s0_to_in_ci1; // Un cable desde co del sumador 1 a la compuerta or
wire co_s1_to_in_ci2;
wire co_s2_to_in_ci3;
 // Un cable desde co del sumador 2 a la compuerta or

// Declaración de submodules
// halfadder(b,a,co,s)
fulladder fulladder1(in_b0, in_a0, in_ca0, co_s0_to_in_ci1, out_s0);
fulladder fulladder2(in_b1, in_a1, co_s0_to_in_ci1, co_s1_to_in_ci2, out_s1);
fulladder fulladder3(in_b2, in_a2, co_s1_to_in_ci2, co_s2_to_in_ci3, out_s2);
fulladder fulladder4(in_b3, in_a3, co_s2_to_in_ci3, out_ca, out_s3);
// Descripción del comportamiento
//assign out_co = co_s1_to_or | co_s2_to_or; // co_s1 or co_s2

endmodule
