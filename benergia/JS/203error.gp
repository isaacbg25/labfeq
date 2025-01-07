set terminal pngcairo enhanced size 1500,1080 enhanced font "Cambria,26"
set output "203error.png"
set ylabel "Error Relatiu (%)"
set xlabel "Temps (s)"
set yrange [0:26]
unset key
set grid
plot "203error.dat" using 1:2 with points ps 3
set output