%-----------------------------------------------------------------------------------------------%
% Analisis de circuitos
% FIUBA - Universidad de Buenos Aires
% González, José
%-----------------------------------------------------------------------------------------------%

close all, clear all;
format long;
format compact;

%-----------------------------------------------------------------------------------------------%
% 
%-----------------------------------------------------------------------------------------------%
pkg load control

c1 = 1e-9
r1 = 10e3

c2 = 10e-12
r2 = 100e3

c3 = 1e3
r3 = 1e-6

r4 = 10e3
c4 = 100e-9

 
s = tf('s'); # se crea una variable que luego nos ayuda a formar la
             # funcion de transferencia

  
GvC = (c1*c2*r2*r4*(r1+1/(c1*s))*(r3+1/(c3*s)))/(c2*c4*r1*r3*(r2+1/(c2*s))*(r4+1/(c4*s)))
 
bode (GvC)
