set terminal png
set output 'conc_teo.png'
set xlabel 'temps(s)'
set ylabel '[sal](g/L)'
set title 'concentració de sal al llarg del temps'
plot 'conc.txt' using 2:1 with points t 'teòrica', 'conc.txt' using 2:3 with points t 'experimental'
