data: ("R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51"
       "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7")
/ data: 0:`3.txt  / uncomment to run real data

read: ({U:|; R::; D:-|; L:-}`n$*; `i$1_)@\:
ofst: :x(1+!:/y;0)
xtnd: {[path;inst] path,+(last path)+ofst/inst}
abs: :$[0<x;x;-x]

/  exclude center; get intersections; generate wires;     read data
intersect:(,0 0)_  #/                 wires:xtnd/[,0 0;]' (read'","\)' data

/ answers: 8015 163676; test answers: 135 410
(&/+/)'(+abs@; wires?\:)@\:intersect

\\
