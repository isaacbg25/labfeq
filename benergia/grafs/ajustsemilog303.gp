set terminal pngcairo enhanced size 1500,1080 enhanced font "Cambria,26"
set output "ajustsemilog303.png"
set samples 60,60
set ylabel "log T'"
set xlabel "temps (min)"
set key top right

f(x) = m*x + b

# Valores iniciales aproximados
m = -0,0787
b = 1,8826

# Ajustar la función a los datos
fit f(x) "ajustsemilog303.dat" using 1:2 via m, b

# Calcular estadísticas para la columna Y

R2 = 0,9986

set grid
plot "ajustsemilog303.dat" with points ps 3 title "Punts Experimentals", \
    f(x) with lines lw 1 lc "blue" title sprintf("Ajust Lineal: y = %.3fx %.3f", m, b)


set output