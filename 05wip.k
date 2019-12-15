I: ("01";"02";"03";"04")!((+;4);(*;4);(`TODO;2);(`TODO;2))
pad: {s:$x; ,[(5-#s)#"0";s]}
next: {(d;idx):x`d`idx; op:pad d@idx; (fn;l):I@op@3 4; i:d@idx+!l
       p:((d@;::)@"1"=op@2 1) @' i@1 2
       `d`idx!(@[d;i@3;fn/p];idx+l)}     / x: dict with keys `d`idx

/ Next steps: add support for input and output

f:**{~99=(x`d)@x`idx} next/
d1:@[.-1_1:`02.txt;1 2;:;12 2]
f `d`idx!(d1;0)
\\
d2:@[d1;1 2;:;]'z:+!2#100
{y+100*x}/*z@&19690720=f'+(d2;0)
/ Puzzle 2: expect 6730673 and 3749
\\
d:@[.-1_1:`2.txt;1 2;:;12 2]
/ op 1: read from a,b;add;store in c
/ op 2: read from a,b;mul;store in c
/ op 99: halt
/ next: jump ahead four

/
    1,0,0,0,99 becomes 2,0,0,0,99 (1 + 1 = 2).
    2,3,0,3,99 becomes 2,3,0,6,99 (3 * 2 = 6).
    2,4,4,5,99,0 becomes 2,4,4,5,99,9801 (99 * 99 = 9801).
    1,1,1,4,99,5,6,0,99 becomes 30,1,1,4,2,5,6,0,99.
\

f:***|{~99=(*x)@(*|x)}{i:x@y+!4; n:@[x;i@3;$[1=*i;+;*]/x@i@1 2]; (n;y+4)}/\
/
f (1 0 0 0 99;0)
f (2 3 0 3 99;0)
f (2 4 4 5 99 0;0)
f (1 1 1 4 99 5 6 0 99;0)
\
::a1:f(d;0)
d2:{@[d;1 2;:;x]}'z:+!2#100
::a2:{y+100*x}/*z@&19690720=f'+(d2;0)

