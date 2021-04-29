function [ output ] = dynamic_control( input )
%KINEMATIC_CONTROL Implementation of the control law
%   Function gives thruster force Tau_u and rudder angle Tau_r as its
%   output.

m1=215;
m2=265;
m3=80;

X_u=70;
Y_v=100;
N_r=100;
X_uu=100;
Y_vv=200;
N_rr=100;

k_x=1.5;
k_psi=3.5;
k_u=3.5;
k_r=0.8;
lambda1=0.1;
lambda2=0.1;
gamma1=0.5;
gamma2=0.3;

u_d_dot=input(1);
r_d_dot=input(2);
u_e0=input(3);
r_e0=input(4);
u_e=input(5);
r_e=input(6);
u_e_integ=input(7);
r_e_integ=input(8);
u=input(9);
v=input(10);
r=input(11);
% x_e=input(12);
% y_e=input(13);
% psi_e=input(14);

   
S1=u_e+lambda1*u_e_integ-u_e0;
S2=r_e+lambda2*r_e_integ-r_e0;

n1=m2*abs(v*r)+X_u*abs(u)+X_uu*abs(u^2)+m1*abs(u_d_dot)+lambda1*m1*abs(u_e)+m1*gamma1;
n2=(m1-m2)*abs(u*v)+N_r*abs(r)+N_rr*abs(r^2)+m3*abs(r_d_dot)+m3*lambda2*abs(r_e)+m3*gamma2;

% Tau_u=-m2*v*r+X_u*u+X_uu*u+m1*u_d_dot-lambda1*m1*u_e-n1*sign(S1);
% Tau_r=-(m1-m2)*u*v+N_r*r+N_rr*r+m3*r_d_dot-m3*lambda2*r_e-n2*sign(S2);
Tau_u=-m2*v*r+X_u*u+X_uu*u+m1*u_d_dot-lambda1*m1*u_e;
Tau_r=-(m1-m2)*u*v+N_r*r+N_rr*r+m3*r_d_dot-m3*lambda2*r_e;

output=[Tau_u, Tau_r];

end

