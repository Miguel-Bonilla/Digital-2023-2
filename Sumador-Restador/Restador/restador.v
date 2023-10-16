module restador (
  // Inputs and output ports; 3 in, 2 out
  input in_b, in_a, in_pi,
  output out_po, out_s
);


// Declaración de señales
wire s_s1_to_b_s2; // Un cable del s del sumador 1 al a del sumador2
wire co_s1_to_or; // Un cable desde co del sumador 1 a la compuerta or
wire co_s2_to_or; // Un cable desde co del sumador 2 a la compuerta or

// Declaración de submodules
// halfadder(b,a,co,s)
halfadder halfadder1(in_b, in_a, co_s1_to_or, s_s1_to_b_s2);
halfadder halfadder2(s_s1_to_b_s2, in_pi, co_s2_to_or, out_s);

// Descripción del comportamiento
assign out_po = co_s1_to_or | co_s2_to_or; // co_s1 or co_s2

endmodule
