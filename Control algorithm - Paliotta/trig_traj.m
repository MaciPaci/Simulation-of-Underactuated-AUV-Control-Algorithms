function [ output ] = trig_traj( time )
%TRIG_TRAJ Trigonometric trajectory generator
%  Generates a trigonometric reference trajectory starting at the point
%  [x; y] = [0; 0]. Function takes current simulation time as an input 
%  and gives reference position x_r, y_r and reference angle psi_r as an output.

%sine trajectory

x_r=time;
y_r=100*sin(0.01*time);
psi_r=atan2(y_r,x_r);
x_r_dot=1;
y_r_dot=cos(0.01*time);
psi_r_dot=atan2(y_r_dot,x_r_dot);

%cosine trajectory
% 
% x_r=time;
% y_r=-200*cos(0.01*time)+200;
% psi_r=atan2(y_r,x_r);
% x_r_dot=1;
% y_r_dot=2*sin(0.01*time);
% psi_r_dot=atan2(y_r_dot,x_r_dot);

output=[x_r; y_r; psi_r_dot; x_r_dot; y_r_dot];

end

