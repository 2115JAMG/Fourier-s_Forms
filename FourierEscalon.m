%Este programa grafica una funci�n escal�n y sobre ella
%una aproximaci�n hecha con la serie de Fourier
clc
clear all
disp('Equipo: ?00�s')
disp('Serie de Fourier de una se�al cuadrada')

%   Aqu� declaramos varias cosas, en primer lugar una variable N la cual es el n�mero de arm�nicos que 
%   incluir� nuestra aproximaci�n, mientras mayor sea el n�mero, m�s fiel ser� la gr�fica obtenida a la
%   original.
%   Tambi�n se declara el intervalo (x) de nuestra funci�n, que va de �pi hasta pi.
%   Por �ltimo inicializamos la variable SUM a cero. 
N= input('Numero de armonicas que desea que sean utilizadas:');
x=-pi:0.001:pi;
sum=0;
%   En este ciclo for est� contenida la magia, inicializa en 1 y termina en N, el incremento es de 2, para 
%   as� tener una serie de n�meros impares (1,3,5,7,9�). Los valores pares de (n) se omiten ya que el
%   resultado es cero para todos ellos, no sumar�n nada a la variable (sum).
%   b(n) fue obtenida anal�ticamente
for n = 1: 2: N
    b(n) = 4/(n*pi);
    sum = sum + b(n) * sin(n*x);
end
%   Para tener el resultado aproximado de la se�al, se suma a 0/2, este t�rmino fue obtenido a partir de   
%   el valor promedio del �rea bajo la curva de -pi a pi, como es una funci�n sim�trica, el valor es 0,       
%   esto podr�a omitirse, pero para se incluye para ver m�s claramente la f�rmula de la serie. 
sum = sum + 0;
%     Esta es una manera de generar la funci�n escal�n (f), diciendo que toda (x) inferior a 0 valdr� -1, y 
%     toda (x) mayor a 0 valdr� 1. Esto s�lo es v�lido para el intervalo de �pi a pi, donde se ve una se�al 
%    cuadrada, si se ampl�an los l�mites se ver� la gr�fica de valores constantes.
f=(x<0).*(-1)+(x>=0).*1; 
%    En esta secci�n se encuentran los comandos para graficar y fin del programa.
plot(x,f); hold on
plot(x,sum)
grid
title('Serie de Fourier')
xlabel('Tiempo')
ylabel('Amplitud')