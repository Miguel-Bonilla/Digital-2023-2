# Digital-2023-2

Los sumadores desempeñan un papel de gran relevancia no solo en el ámbito de las computadoras, sino también en una variedad de sistemas digitales que manipulan información numérica. Es esencial adquirir un conocimiento sólido sobre el funcionamiento de un sumador elemental al explorar los entresijos de los sistemas digitales.
Ahora bien, en este informe se presentará al sumador medio y al sumador completo. Recordemos lo básico acerca de la suma en binario:

![Suma_bits](Picture1.png)


Estas operaciones entonces son realizadas por un circuito lógico llamado sumador medio. Los medios sumadores son componentes fundamentales en sistemas digitales, ya que la aritmética binaria es esencial para realizar operaciones matemáticas y lógicas en un sistema electrónico. Además, los medios sumadores son la base para construir sumadores completos, que son capaces de sumar números de múltiples bits.

![Esquema_sumador](Picture2.png)

Haciendo una simplificación por Karnaugh, podemos sacar la ecuación de cada una de sus salidas:

![Karnaught_sumador](Picture3.png)

![Karnaught_sumador2](Picture4.png)

![Karnaught_sumador2](Picture5.png)

![Karnaught_sumador2](Picture6.png)

Podemos ver que la lógica de este es S = A ⊕ B Y Cout = AB
Finalmente, viendo la simulación del sumador medio a partir de señales se muestra a continuación:

![Karnaught_sumador2](Picture7.png)

![Karnaught_sumador2](Picture8.png)

Ahora bien, el circuito que en el que se hacen con 3 bits o más, se le conoce como sumador completo. Los sumadores completos se utilizan en una amplia variedad de aplicaciones, desde operaciones aritméticas en microprocesadores hasta diseño de circuitos lógicos en sistemas digitales. También son componentes clave en la construcción de sumadores de números de varios bits y otros dispositivos lógicos más complejos.

![Karnaught_sumador2](Picture9.png)

Y el circuito y su lógica se muestra en la siguiente figura

![Karnaught_sumador2](Picture10.png)

Ahora bien, para construir un sumador completo, podemos usar dos sumadores medio de esta manera: 

![Karnaught_sumador2](Picture11.png)

Finalmente, la simulación del sumador completo de tres bits a partir de pulsos es mostrada a continuación:

![Karnaught_sumador2](Picture12.png)

![Karnaught_sumador2](Picture13.png)

Teniendo en cuenta lo anterior, podemos construir un sumador completo de 4 bits, junto con su simulación
![Karnaught_sumador2](Picture14.png)

![Karnaught_sumador2](Picture11.png)
