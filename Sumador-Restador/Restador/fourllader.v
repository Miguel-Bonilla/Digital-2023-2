module fourllader (
  // Inputs and output ports; 3 in, 2 out
  input in_b0, in_a0,in_b1, in_a1,in_b2, in_a2,in_b3, in_a3, in_pa0,
  output out_pa, out_s0,  out_s1, out_s2, out_s3
);


// Declaración de señales
 // Un cable del s del sumador 1 al a del sumador2
wire po_s0_to_in_pi1; // Un cable desde co del sumador 1 a la compuerta or
wire po_s1_to_in_pi2;
wire po_s2_to_in_pi3;
 // Un cable desde co del sumador 2 a la compuerta or

// Declaración de submodules
// halfadder(b,a,co,s)
restador restador1(in_b0, in_a0, in_pa0, po_s0_to_in_pi1, out_s0);
restador restador2(in_b1, in_a1, po_s0_to_in_pi1, po_s1_to_in_pi2, out_s1);
restador restador3(in_b2, in_a2, po_s1_to_in_pi2, po_s2_to_in_pi3, out_s2);
restador restador4(in_b3, in_a3, po_s2_to_in_pi3, out_pa, out_s3);
// Descripción del comportamiento
//assign out_co = co_s1_to_or | co_s2_to_or; // co_s1 or co_s2

endmodule
