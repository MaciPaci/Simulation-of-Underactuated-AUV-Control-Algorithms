function [ output ] = trig_traj( time )
%TRIG_TRAJ Trigonometric trajectory generator
%  Generates a trigonometric reference trajectory starting at the point
%  [x; y] = [0; 0]. Function takes current simulation time as an input 
%  and gives reference position x_r, y_r and reference angle psi_r as an output.

%sine trajectory
x_r=time;
y_r=100*sin(0.01*time);
psi_r=atan2(y_r,x_r);

%cosine trajectory
% x_r=time;
% y_r=-100*cos(0.01*time)+100;
% psi_r=atan2(y_r,x_r);

output=[x_r; y_r; psi_r];

end

