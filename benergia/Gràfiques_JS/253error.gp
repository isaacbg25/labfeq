set terminal pngcairo enhanced size 1500,1080 enhanced font "Cambria,26"
set output "253error.png"
set ylabel "Error Relatiu (%)"
set xlabel "Temps (s)"
set yrange [-1:3]
unset key
set grid
plot "253error.dat" using 1:2 with points ps 3
set output