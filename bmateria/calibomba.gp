set terminal png
set output 'calisal.png'
set xlabel '[sal] (g/L)'
set ylabel 'Senyal (mS)'
set title 'calibratge del conductímetre'
#plot 'calisal.txt' using 1:2 with linespoints lc 'orange' pt 7 ps 1.5

set xrange [0:150]
set yrange [0:600]

# Definició de la funció
f(x) = m * x + b

# Valors inicials dels paràmetres
m = 1  # Pendent inicial
b = 1  # Intersecció inicial

# Realitzar l'ajust amb les dades
fit f(x) "calisal.txt" using 1:2 via m, b

# Representar les calisal i l'ajust
plot "calisal.txt" using 1:2 with points title "Dades", \
     f(x) with lines title sprintf("Ajust: y = %.2fx + %.2f", m, b)