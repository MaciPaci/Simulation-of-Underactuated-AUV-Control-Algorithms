function [ output ] = zeta_calculation( input )
%ZETA_CALCULATION Calculations of the change of coordinates
%   Function calculates change of coordinates, based on the definition of
%   the hand position.

l=1;
%l=0.75;

x_r=input(1);
y_r=input(2);
psi_r=input(3);
x=input(4);
y=input(5);
psi=input(6);
% zeta_1_dot=input(7);
% zeta_2_dot=input(8);
% zeta_1d_dot=input(9);
% zeta_2d_dot=input(10);
zeta_3=input(7);
zeta_4=input(8);
z2=input(9);

zeta_1=x+l*cos(psi);
zeta_2=y+l*sin(psi);
% zeta_3=zeta_1_dot-V_x;
% zeta_4=zeta_2_dot-V_y;
% zeta_3=u*cos(psi)-v*sin(psi)-r*l*sin(psi);
% zeta_4=u*sin(psi)+v*cos(psi)+r*l*cos(psi);


% zeta_1d=x_r+l*cos(psi_r);
% zeta_2d=y_r+l*sin(psi_r);
% zeta_3d=zeta_1d_dot-V_x;
% zeta_4d=zeta_2d_dot-V_y;
zeta_1d=x_r;
zeta_2d=y_r;
zeta_3d=zeta_1d;
zeta_4d=zeta_2d;


output=[zeta_1; zeta_2; zeta_3; zeta_4; zeta_1d; zeta_2d; zeta_3d; zeta_4d];

end

