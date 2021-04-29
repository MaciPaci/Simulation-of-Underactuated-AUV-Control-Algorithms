function [ output ] = line_traj( time )
%LINE_TRAJ Line trajectory generator
%  Generates a linear reference trajectory starting at the point 
%  [x; y] = [0; 0]. Function takes current simulation time as an input
%  and gives reference position x_r, y_r and reference angle psi_r as an output.

x_r=time;
y_r=time;
psi_r=atan2(y_r,x_r);

output=[x_r; y_r; psi_r];

end

