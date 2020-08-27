/ https://adventofcode.com/2019/day/3

data: ("R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51"
       "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7")
/ data: 0:`3.txt  / uncomment to run real data

steps: :((0 1; 1 0; 0 -1; -1 0)"URDL"?x[;0])@&`i$1_/:x
wires: (+\ steps@ ","\)'data
abs: :x*(x>0)-x<0
&/+/ +abs #/wires
&/+/ 1+wires?\: #/wires

/ answers: 8015 163676; test: 135 410
/ 1+ in part 2 since we're indexing from zero

\\

/ old k7 version

d:("R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51"
   "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7")
d:0:`03.txt  / commment out to run test instead
p:{((|:;::;-|:;-:)@"URDL"?*x;. 1_x)}'","\:
path:|{(|+(*x)+(*y)@(1+!*|y;0)),x}/
(a;b):path[,0 0;]'p'd
i:a^a^b^0 0
(&/+/)'(+abs i;(a;b)?\:i)

/ answers: 8015 163676
/ test answers: 135 410

\\
