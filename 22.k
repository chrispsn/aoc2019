/ Part 1 only.

cut:{n:y+(#x)*y<0; (n_x),n#x}
dwi:{l:#x; @[x;l\y*!l;:;x]}
f:0:`22.txt
next:{$["deal"~y@!4
        $["stack"~-5#y; |x; dwi[x;`i$*|" "\:y]]
        cut[x;`i$4_y]]}
(next/[!10007;f])?2019
