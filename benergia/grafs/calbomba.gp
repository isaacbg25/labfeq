set terminal pngcairo enhanced size 1500,1080 enhanced font "Cambria,26"
set output "calbomba.png"
set samples 60,60
set ylabel "Volum (mL)"
set xlabel "Revolucions per minut (rpm)"
set key top right

f(x) = m*x + b

# Valores iniciales aproximados
m = 1
b = 10

# Ajustar la función a los datos
fit f(x) "calbomba.dat" using 1:2 via m, b

# Calcular estadísticas para la columna Y

R2 = 0.9995

set grid
plot "calbomba.dat" with points ps 3 title "Punts Experimentals", \
    f(x) with lines lw 1 lc "blue" title sprintf("Ajust Lineal: y = %.3fx %.3f", m, b)


set output