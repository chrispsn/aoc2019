data: ("R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51"
       "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7")
/ data: 0:`3.txt  / uncomment to run real data

ofst: {[x;y] dir:{U:|; R::; D:-|; L:-}`n$x
             steps:(:(1+!x;0))'`i$y
             dir @' steps}
walk: {[path;steps] path,+(last path)+steps}
abs: :$[0<x;x;-x]

wires: ((0#,0 0) walk/ ofst/ + 0 1^/:","\)'data
intersect: #/wires

/ answers: 8015 163676; test: 135 410
/ 1+ done in part 2 so that we count centre node
(&/+/)'(+abs@/:; 1+wires?\:)@\:intersect

\\
