set terminal pngcairo enhanced size 1500,1080 enhanced font "Cambria,26"
set output "303.png"
set ylabel "Temperatura (K)"
set xlabel "Temps (s)"
set key bottom right
set yrange [260:370]
set xrange [0:530]

set grid
plot "303.dat" using 1:2 with points ps 3 lc rgb "red" title 'Temperatures experimentals', \
     "303.dat"  using 1:3 with points ps 3 lc rgb "blue" title 'Temperatures teòriques'
set output