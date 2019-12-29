/ Part 1 only.

cut:{l:#x;x@l\y+!l}
dwi:{l:#x;@[x;l\y*!l;:;x]}
f:0:`22.txt
next:{$["k"=*|y; |x
        "d"=*y; dwi[x;`i$20_y]
        cut[x;`i$4_y]]}
(next/[!10007;f])?2019

/ Some inspiration in the way the conditional in next is written from:
/ https://bitbucket.org/ngn/k/src/398e4a232d78df878743c5b8d0856986621d251d/aoc19/a.k#lines-56

/ Answer: 2480
