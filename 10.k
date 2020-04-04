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
rocks: (+|!2##d)@&"#"=,/d
line: {$[&[~x<0;y>0];0;&[x>0;~y>0];1;&[~x>0;y<0];2;3],x%y}/  / how to vectorise?
diffs: (,0 0)_/rocks-\/rocks
counts: (#?line')'diffs
index: *>counts
 \ base:`count`posn!(counts;rocks)@\index

renorm: 1 -1*+diffs index

/ approach 1 (less clear?)
s: <+(l:line'+renorm; +/{x*x}renorm)
order: ((,base`posn)_rocks)s@<,/<'=l s   / could do (!#)' instead of <'

/ approach 2 (dict-y; slower?)
strip: {(,/x)@<,/(!#)'x}
order: strip@!?=*'?^(+(line'+renorm; +/{x*x}renorm))!(,base`posn)_rocks

100/:order@199

/ answers: 288 (count); 616

/ tests for example
802~100/:order@199
(11 12;12 1;12 2;12 8;16 0;16 9;10 16;9 6;8 2;10 9;11 1)~order@(1 2 3 10 20 50 100 199 200 201 299)-1
299~#order

\\
