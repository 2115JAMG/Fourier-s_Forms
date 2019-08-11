close all % Cerrar ventanas antes de iniciar
clc       % limpiar variables
disp('Equipo: ?00´s')
disp('Serie de Fourier de una señal triangular')

N=input('Numero de armonicas que desea que sean utilizadas: '); 
t=-10:0.01:10; 
f=sawtooth(2*pi*0.1*t,0.5); 
s = zeros(size(t));
    for k=1:N 
        s=s+((-4/((k*pi)^2)*(1+(-1)^(k-1)))*cos(k*t*0.6)); 
        hold on 
        plot(t, s, 'r', t, f, 'b'); 
    end
grid on 
title ('Serie de Fourier'); 
xlabel('tiempo'); 
ylabel('Amplitud'); 


