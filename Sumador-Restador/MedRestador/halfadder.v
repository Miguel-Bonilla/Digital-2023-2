// Declaración del módulo
module halfadder (
  input a, b,
  output co, s
);

// Declaración de señales
// ...

// Descripción del comportamiento
assign s = a ^ b; // s = a xor b
assign co = ~a & b; // a and b

endmodule
