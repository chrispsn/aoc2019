d:(".#..##.###...#######"
 "##.############..##."
 ".#.######.########.#"
 ".###.#######.####.#."
 "#####.##.#.##.###.##"
 "..#####..#.#########"
 "####################"
 "#.####....###.#.#.##"
 "##.#################"
 "#####.##.###..####.."
 "..######..##.#######"
 "####.##.####...##..#"
 ".#####..#.######.###"
 "##...#.##########..."
 "#.##########.#######"
 ".####.#.###.###.#.##"
 "....##.##.###..#####"
 ".#.#.###########.###"
 "#.#.#.#####.####.###"
 "###.##.####.##.#..##")

/ d:0:`10.txt    / comment to use example input instead
rocks:(+|!2##d)@&"#"=,/d
line:{$[&[~x<0;y>0];0;&[x>0;~y>0];1;&[~x>0;y<0];2;3],x%y}/
deltas: rocks-\/rocks
counts:-1+(#?line')'deltas  / exclude the center line now?
 \ a1:`count`posn! last ^+(counts;rocks)

renorm: +1 -1*+deltas@rocks?a1`posn  / eliminate by making y axis -ve from very start?
s:+^+(line'renorm; {+/x*x}'renorm; rocks)
strip: {(,0N)_,/x@\/!|/#'x} / workaround for k9 flip being less tolerant than k7
order:(,a1`posn)_(last s) strip @ last .=*s
100/:order@199

/ answers: 288 (count); 616

/ tests for example
802~100/:order@199
(11 12;12 1;12 2;12 8;16 0;16 9;10 16;9 6;8 2;10 9;11 1)~order@(1 2 3 10 20 50 100 199 200 201 299)-1
299~#order

\\
