%Este programa grafica una función escalón y sobre ella
%una aproximación hecha con la serie de Fourier
clc
clear all
disp('Equipo: ?00´s')
disp('Serie de Fourier de una señal cuadrada')

%   Aquí declaramos varias cosas, en primer lugar una variable N la cual es el número de armónicos que 
%   incluirá nuestra aproximación, mientras mayor sea el número, más fiel será la gráfica obtenida a la
%   original.
%   También se declara el intervalo (x) de nuestra función, que va de –pi hasta pi.
%   Por último inicializamos la variable SUM a cero. 
N= input('Numero de armonicas que desea que sean utilizadas:');
x=-pi:0.001:pi;
sum=0;
%   En este ciclo for está contenida la magia, inicializa en 1 y termina en N, el incremento es de 2, para 
%   así tener una serie de números impares (1,3,5,7,9…). Los valores pares de (n) se omiten ya que el
%   resultado es cero para todos ellos, no sumarán nada a la variable (sum).
%   b(n) fue obtenida analíticamente
for n = 1: 2: N
    b(n) = 4/(n*pi);
    sum = sum + b(n) * sin(n*x);
end
%   Para tener el resultado aproximado de la señal, se suma a 0/2, este término fue obtenido a partir de   
%   el valor promedio del área bajo la curva de -pi a pi, como es una función simétrica, el valor es 0,       
%   esto podría omitirse, pero para se incluye para ver más claramente la fórmula de la serie. 
sum = sum + 0;
%     Esta es una manera de generar la función escalón (f), diciendo que toda (x) inferior a 0 valdrá -1, y 
%     toda (x) mayor a 0 valdrá 1. Esto sólo es válido para el intervalo de –pi a pi, donde se ve una señal 
%    cuadrada, si se amplían los límites se verá la gráfica de valores constantes.
f=(x<0).*(-1)+(x>=0).*1; 
%    En esta sección se encuentran los comandos para graficar y fin del programa.
plot(x,f); hold on
plot(x,sum)
grid
title('Serie de Fourier')
xlabel('Tiempo')
ylabel('Amplitud')