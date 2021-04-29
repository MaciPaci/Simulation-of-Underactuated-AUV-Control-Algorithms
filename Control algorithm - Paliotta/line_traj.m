function [ output ] = line_traj( time )
%LINE_TRAJ Line trajectory generator
%  Generates a linear reference trajectory starting at the point 
%  [x; y] = [0; 0]. Function takes current simulation time as an input
%  and gives reference position x_r, y_r and reference angle psi_r as an output.

x_r=0.5*time;
y_r=0.25*time;
psi_r=atan2(y_r,x_r);
x_r_dot=0.5;
y_r_dot=0.25;
psi_r_dot=atan2(y_r_dot,x_r_dot);

output=[x_r; y_r; psi_r_dot; x_r_dot; y_r_dot];

end

