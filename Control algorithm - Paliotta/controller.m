function [ output ] = controller( input )
%CONTROLLER Implementation of the control law
%   Function gives thruster force Tau_u and rudder angle Tau_r as its
%   output. Calculations are based on the current position and orientation
%   of the vehicle in reference to the given trajectory.

%Light vehicle
% m11=19;
% m22=34;
% m33=2.1;
% m23=0;
% m32=0;
% d11=2.4;
% d22=23;
% d33=9.7;
% d23=0;
% d32=0;

%Heavy vehicle
m11=215;
m22=265;
m33=80;
m23=0;
m32=0;
d11=70;
d22=100;
d33=100;
d23=0;
d32=0;

%trigonometric and linear trajectory parameters
l=1;
k_vx=50;
k_vy=50;
k_px=5;
k_py=5;
k_Ix=0.5;
k_Iy=0.5;

%circle trajectory parameters
% l=0.75;
% k_vx=200;
% k_vy=200;
% k_px=5;
% k_py=5;
% k_Ix=0.1;
% k_Iy=0.1;

zeta_1=input(1);
zeta_2=input(2);
%zeta_3=input(3);
%zeta_4=input(4);
zeta_1d=input(5);
zeta_2d=input(6);
zeta_3d=input(7);
zeta_4d=input(8);
zeta_1I=input(9);
zeta_2I=input(10);
zeta_1dI=input(11);
zeta_2dI=input(12);
zeta_3d_dot=input(13);
zeta_4d_dot=input(14);
zeta_3=input(15);
zeta_4=input(16);
z2=input(17); %r
z1=input(18);

u=zeta_3*cos(z1)+zeta_4*sin(z1);
v=-zeta_3*sin(z1)+zeta_4*cos(z1)-z2*l;

mi1=-k_vx*(zeta_3-zeta_3d)-k_px*(zeta_1-zeta_1d)-k_Ix*(zeta_1I-zeta_1dI)+zeta_3d_dot;
mi2=-k_vy*(zeta_4-zeta_4d)-k_py*(zeta_2-zeta_2d)-k_Iy*(zeta_2I-zeta_2dI)+zeta_4d_dot;

a=((m22*v+m23*z2)*z2-d11*u)/m11-(v*z2-l*z2^2);
b=u*z2+((-(m11*m33-m23^2)/(m22*m33-m23^2))*u+(d33*m23-d23*m33)/(m22*m33-m23^2))*z2+(-(((m11-m22)*m23)/(m22*m33-m23^2))*u-(d22*m33-d32*m23)/(m22*m33-m23^2))*v+(((m23*d22-m22*(d32+(m22-m11)*u))*v+(m23*(d23+m11*u)-m22*(d33+m23*u))*z2)/(m22*m33-m23^2))*l;

F=[cos(z1) -sin(z1); sin(z1) cos(z1)]*[a;b];

G=[cos(z1) -l*sin(z1); sin(z1) l*cos(z1)];
A=-F+[mi1;mi2];

TAU=G\A;

Tau_u=TAU(1);
Tau_r=TAU(2);

Taur_max=0.4363;
%Taur_max=0.2;
if Tau_r>Taur_max
    Tau_r=Taur_max;
end 

if Tau_r<-Taur_max
        Tau_r=-Taur_max;
end

%Tau_max=0.75;
Tau_max=16.6667-0.126*41.6667*zeta_3;
%Tau_max=17;
if Tau_u>Tau_max
    Tau_u=Tau_max;
end
if Tau_u<0
    Tau_u=0;
end

output=[Tau_u; Tau_r];

end

