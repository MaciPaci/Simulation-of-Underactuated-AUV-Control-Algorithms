function [ output ] = kinematic_control( input )
%DYNAMIC_CONTROL Calculation of the virtual input variables
%   Function takes reference trajectory and error vectors as its input and
%   returns virtual input variables, that are later used to calculate
%   control inputs, as its output.

k_x=1.5;
k_psi=3.5;

x_r_dot=input(1);
y_r_dot=input(2);
psi_r_dot=input(3);
x_e=input(4);
y_e=input(5);
psi_e=input(6);

u_r=sqrt(x_r_dot+y_r_dot);
r_r=psi_r_dot;

u_d= u_r*cos(psi_e)-k_x*x_e;
r_d=r_r-u_r*y_e-k_psi*psi_e;

output=[u_d, r_d];

end

