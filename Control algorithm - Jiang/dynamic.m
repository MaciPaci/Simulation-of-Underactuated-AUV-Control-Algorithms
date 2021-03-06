function [ output ] = dynamic( input )
%DYNAMIC Dynamic equations of the model
%   Function takes current control inputs, as well as velocities
%   vector generated by itself in the previous iteration, as inputs and
%   gives vector of velocities of the vehicle in the body frame as an
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

Tau_u=input(1);
Tau_r=input(2);
u=input(3);
v=input(4);
r=input(5);

u_dot=(m2*v*r-X_u*u-X_uu*u*abs(u)+Tau_u)/m1;
v_dot=(-m1*u*r-Y_v*v-Y_vv*v*abs(v))/m2;
r_dot=((m1-m2)*u*v-N_r*r-N_rr*r*abs(r)+Tau_r)/m3;


output=[u_dot; v_dot; r_dot];

end

