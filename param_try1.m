%Limpieza de pantalla
clear all
close all
clc

%Graficación de la trayectoria en coordenadas polares
%Definimos el parámetro theta como un vector en radianes
theta=0:pi/12:pi;
%Definimos el parámetro r como una función respecto a theta
r=cos(theta);
%Se ingresan parametros a la función polar para la representación gráfica (theta(radianes), r)
figure(1)
polarplot(theta,r)

%Graficación de la trayectoria en coordenadas cartesianas
%Trasformamos las coordenas polares a cartesianas
x= r.*cos(theta);
y=r.*sin(theta);

%graficamos la trayectoria
figure(2)
comet(x,y)

%Graficación de la trayectoria en coordenadas paramétricas

%Se define el parámetro "t" de parametrización sobre el cual se realizará
%la proyección de trayectoria
tiempo=[0:1:12];

%Se normaliza el intervalo de tiempo al intervalo de variación del ángulo
%theta
t= normalize(tiempo,"range",[0,pi]);

%Obtenemos las ecuaciones dependientes del tiempo
x= cos(t).*cos(t);
y= cos(t).*sin(t);

%graficamos la trayectoria
figure(3)
comet(x,y)