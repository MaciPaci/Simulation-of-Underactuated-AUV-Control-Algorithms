function [ output ] = trig_traj_dot( time )
%TRIG_TRAJ_DOT First derivative of a trigonometric trajectory generator
%   Returns first derivative of the chosen trigonometric trajectory

%derivative of a sine trajectory
x_r_dot=1;
y_r_dot=cos(0.01*time);
psi_r_dot=atan2(y_r_dot,x_r_dot);

%derivative of a cosine trajectory
% x_r_dot=1;
% y_r_dot=sin(0.01*time);
% psi_r_dot=atan2(y_r_dot,x_r_dot);

output=[x_r_dot; y_r_dot; psi_r_dot];

end

