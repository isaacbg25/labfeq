set terminal png
set output 'conc2.png'
set xlabel 'temps(s)'
set ylabel '[sal](g/L)'
set title 'concentració de sal al llarg del temps, cabal=491.42 mL/min'
plot 'conc2.txt' using 2:1 with points t 'teòrica', 'conc2.txt' using 2:3 with points t 'experimental'
