i:"193651-649729"
d:10\:'{x+!1+y-x}/`i$"-"\:i
+/r:{&[x~^x;|/=':x]}'d
+/r&{2 in #:'=x}'d
/ used some ideas in this. could maybe make it even shorter?
/ https://github.com/sup95/AdventOfCode-19/blob/master/src/Day4/Solve.kt

#{|/1<#:'.=x}#p:{x~^x}#${x+!y-x}.`i$"-"\:"193651-649729"
#{2 in #:'.=x}#p

+/1<f:&/'freq'{x~^x}#${x+!y-x}.`i$"-"\:"193651-649729"
+/2=f

/ can we get the counts in a matrix that we can flip? save a bit on line 1?
/ all we need is the minimum count above 1... and therefore digits with >1 occurrence. then (a) +/~~ and (b) +/2=.
\\
