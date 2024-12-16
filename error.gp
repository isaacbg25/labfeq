set terminal pngcairo size 1000,600 font "Helvetica, 18"

set style line 1 lc rgb "blue" lw 2 lt 1 pt 7 ps 1
set style line 2 lc rgb "green" lw 2 lt 1 pt 7 ps 1
set style line 3 lc rgb "orange" lw 2 lt 1 pt 7 ps 1
set style line 4 lc rgb "brown" lw 2 lt 1 pt 7 ps 1
set style line 5 lc rgb "purple" lw 2 lt 1 pt 7 ps 1
set style line 6 lc rgb "black" lw 2 lt 1 pt 7 ps 1
set style line 7 lc rgb "red" lw 2 lt 1  

set output "error300.png"

set rmargin 20
set key right

set xlabel "temps (s)"
set ylabel "error relatiu concentració (%)"

set title "Error relatiu concentració pel cabal de 300 L/min"

set xrange[0:2340]
set yrange[0:100]

plot "error.txt" u 1:2 w l ls 1 t "cabal 270 L/min"

set output "error500.png"

set rmargin 20
set key right

set xlabel "temps (s)"
set ylabel "error relatiu concentració (%)"

set xrange[0:1440]
set yrange[0:100]

set title "Error relatiu concentració pel cabal de 500 L/min"

plot "error.txt" u 1:3 w l ls 2 t "cabal 491 L/min"