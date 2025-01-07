set terminal pngcairo enhanced size 1500,1080 enhanced font "Cambria,26"
set output "303error.png"
set ylabel "Error Relatiu (%)"
set xlabel "Temps (s)"
set yrange [0:26]
set xrange [0:530]
unset key
set grid
plot "303error.dat" using 1:2 with points ps 3
set output