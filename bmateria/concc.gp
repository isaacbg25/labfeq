set terminal pngcairo size 1000,600 font "Helvetica, 18"

set style line 1 lc rgb "blue" lw 2 lt 1 pt 7 ps 1
set style line 2 lc rgb "green" lw 2 lt 1 pt 7 ps 1
set style line 3 lc rgb "orange" lw 2 lt 1 pt 7 ps 1
set style line 4 lc rgb "brown" lw 2 lt 1 pt 7 ps 1
set style line 5 lc rgb "purple" lw 2 lt 1 pt 7 ps 1
set style line 6 lc rgb "black" lw 2 lt 1 pt 7 ps 1
set style line 7 lc rgb "red" lw 2 lt 1  

set output "conc300.png"

set rmargin 20
set key right

set xlabel 'temps(s)'
set ylabel '[sal](g/L)'
set title 'concentració de sal al llarg del temps, cabal=270.16 mL/min'

set xrange[0:2340]
set yrange[0:100]

plot 'conc300.txt' using 2:1 w l ls 1 t 'teòrica', 'conc300.txt' using 2:3 w l ls 2 t 'experimental'



set output 'conc500.png'

set rmargin 20
set key right

set xrange[0:1440]
set yrange[0:100]

set xlabel 'temps(s)'
set ylabel '[sal](g/L)'
set title 'concentració de sal al llarg del temps, cabal=491.42 mL/min'

plot 'conc500.txt' using 2:1 w l ls 1 t 'teòrica', 'conc500.txt' using 2:3 w l ls 2 t 'experimental'