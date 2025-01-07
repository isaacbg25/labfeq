set terminal pngcairo enhanced size 1500,1080 enhanced font "Cambria,26"
set output "253.png"
set ylabel "Temperatura (K)"
set xlabel "Temps (s)"
set key bottom left
set yrange [300:370]

set grid
plot "253.dat" using 1:2 with points ps 3 lc rgb "red" title 'Temperatures experimentals', \
     "253.dat"  using 1:3 with points ps 3 lc rgb "blue" title 'Temperatures teòriques'
set output