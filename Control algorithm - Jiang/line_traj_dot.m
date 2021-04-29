function [ output ] = line_traj_dot( time )
%LINE_TRAJ_DOT First derivative of a linear trajectory generator
%   Returns first derivative of the chosen linear trajectory

x_r_dot=1;
y_r_dot=1;
psi_r_dot=atan2(y_r_dot,x_r_dot);

output=[x_r_dot; y_r_dot; psi_r_dot];

end

