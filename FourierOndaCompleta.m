close all % Cerrar ventanas antes de iniciar
clc       % limpiar variables
disp('Equipo: ?00´s')
disp('Serie de Fourier de una señal de onda completa')

N=input('Numero de armonicas que desea que sean utilizadas: '); 
x = -2*pi:0.01:2*pi; 
f=abs(sin(.5*x)); 
s = zeros(size(x));

for k=1:N
    s=s-((4/pi)*(cos(k*1*x)/((4*(k^2))-1))); 
    s1=s+.6332; 
    hold on 
end

plot(x, s1, 'r', x, f, 'b'); 
grid on 
title ('Serie de Fourier'); 
xlabel('tiempo'); 
ylabel('Amplitud');