close all % Cerrar ventanas antes de iniciar
clc       % limpiar variables
disp('Equipo: ?00´s')
disp('Serie de Fourier de una señal de onda completa')

N=input('Numero de armonicas que desea que sean utilizadas: ');  
 
t= -pi:0.001:pi; 
f=1.01*sin(t); 
s = zeros(size(t)); 
for k=-N:N 
   s=(10/pi)+(N*sin*100*pi)-((20/(3*pi))*cos*200*pi)-((20/(15*pi))*cos*400*pi)-((20/(35*pi))*cos*600*pi); 
    hold  on  
end  
   plot(t,s1,'r',t,f,'b'); 
 
hold  on 
grid on 
title ('Serie de Fourier'); 
xlabel('tiempo'); 
ylabel('Amplitud'); 