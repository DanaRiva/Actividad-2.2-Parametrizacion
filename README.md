# Actividad-2.2-Parametrizacion

Dana Marian Rivera Oropeza - A00830027 \
Daniela Berenice Hernández de Vicente - A01735346 \
Alejandro Armenta Arellano - A01734879

Iniciamos limpiando la pantalla y eliminando las variables que pudieran existir previas a la ejecución del código.
``` matlab
clear all
close all
clc
```

Definimos los parámetros de trayectoria como un vector que va aumentando en un intervalo establecido
cuyos valores se consideran respecto a pi ya que estamos definiendo los valores para las coordenadas 
polares, este vector de valores va a variar dependiendo de el tipo de trayectoria que estamos buscando
trazar, después realizamos las operaciones necesarias para obtener el valor de r usando identidades
trigonométricas, el vaor de r lo usamos después para transformar las coordenadas de polares a
cartesianas

``` matlab
theta=0:pi/12:pi;
r=cos(theta);
figure(1)
polarplot(theta,r)

x= r.*cos(theta);
y=r.*sin(theta);
```

Finalmente realizamos la parametrización de la última gráfica para crear la trayectoria
que debe de trazar utilizando las ecuaciones dependientes del tiempo que calculan su movimiento
en cada momento del tiempo indicado por el intérvalo declarado en el vector t

``` matlab
tiempo=[0:1:12];

t= normalize(tiempo,"range",[0,pi]);

x= cos(t).*cos(t);
y= cos(t).*sin(t);

figure(3)
comet(x,y)
```

## Resultados

### 1
![WhatsApp Image 2023-04-11 at 12 34 55](https://user-images.githubusercontent.com/100874942/231633018-0dba4c07-ad8a-4645-8d70-22de5a7fdd46.jpeg)

### 2
![WhatsApp Image 2023-04-11 at 12 37 44](https://user-images.githubusercontent.com/100874942/231633081-b1f6811a-8547-4cdf-9dce-b8640415cb79.jpeg)

### 3
![image](https://user-images.githubusercontent.com/100874942/231633128-424c93ff-7b22-47fb-a0ed-63776ba60b2c.png)

### 4
![image](https://user-images.githubusercontent.com/100874942/231633291-313c0615-6809-4a0b-b2ce-5a46a570f35f.png)

### 5
![image](https://user-images.githubusercontent.com/100874942/231633331-00f2bf4b-1ffd-4313-85bf-1c188f957b44.png)

### 6
![image](https://user-images.githubusercontent.com/100874942/231633358-29b19938-2c89-49af-8def-fdcce06c8ca7.png)
