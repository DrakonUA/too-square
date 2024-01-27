# too-square
An extremely niche program. Calculates "x²+(x-1)²+(x-2)²+...+(x-(x-1))²". In addition to having a niche use case, it is being written in... that's right, gbz80 assembly!

## Limitations
Since the program is written in gbz80 assembly, the variables are limited to being 8-bit in this implementation, which means only values up to 8 can be calculated. THAT is what I mean when I say this is niche. There are plans to make this program in other languages in the future, this is just a proof-of-concept (and my first actual program in gbz80).

## Formula examples
Here are some examples of the formula:<br>
x = 2; 2²+1² = 4+1 = 5<br>
x = 3; 3²+2²+1² = 9+4+1 = 14<br>
x = 1; 1² = 1<br>
