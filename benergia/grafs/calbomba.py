import numpy as np
import matplotlib.pyplot as plt

# Cargar los datos desde el archivo .dat
data = np.loadtxt('.\benergia\grafs\calbomba.dat')  # Cambia el nombre del archivo si es necesario

# Separar los datos en columnas x (primer columna) e y (segunda columna)
x = data[:, 0]
y = data[:, 1]

# Realizar la regresión lineal utilizando np.polyfit (grado 1)
m, b = np.polyfit(x, y, 1)

# Calcular los valores de la recta ajustada
y_fit = m * x + b

# Calcular R^2 (Coeficiente de determinación)
y_mean = np.mean(y)
SS_tot = np.sum((y - y_mean) ** 2)
SS_res = np.sum((y - y_fit) ** 2)
R2 = 1 - (SS_res / SS_tot)

# Crear el gráfico
plt.scatter(x, y, color='red', label='Puntos experimentales')  # Puntos experimentales
plt.plot(x, y_fit, color='blue', label=f'Ajuste: y = {m:.3f}x + {b:.3f}\nR² = {R2:.4f}')  # Recta de ajuste
plt.title('Ajuste lineal con Matplotlib')
plt.xlabel('Eje X')
plt.ylabel('Eje Y')

# Mostrar leyenda
plt.legend()

# Mostrar gráfico
plt.show()
