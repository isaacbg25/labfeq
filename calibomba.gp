set terminal png
set output 'calibomba.png'
set xlabel 'rpm'
set ylabel 'Q_L (ml/min)'
set title 'calibratge de la bomba'
#plot 'calibomba.txt' using 1:2 with linespoints lc 'blue' pt 7 ps 1.5

set xrange [0:150]
set yrange [0:600]

# Definició de la funció
f(x) = m * x + b

# Valors inicials dels paràmetres
m = 1  # Pendent inicial
b = 1  # Intersecció inicial

# Realitzar l'ajust amb les dades
fit f(x) "calibomba.txt" using 1:2 via m, b

# Representar les calibomba i l'ajust
plot "calibomba.txt" using 1:2 with points title "Dades", \
     f(x) with lines title sprintf("Ajust: y = %.2fx + %.2f", m, b)