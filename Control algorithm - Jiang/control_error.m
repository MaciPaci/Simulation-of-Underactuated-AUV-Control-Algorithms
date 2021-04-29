function [ output ] = control_error( input )
%CONTROL_ERROR Calculation of the control error
%   Function compares current position and orientation of the vehicle to
%   the desired reference position and orientation and returns the
%   difference as its output.

x_ref=input(1);
y_ref=input(2);
psi_ref=input(3);
x=input(4);
y=input(5);
psi=input(6);

% x_e=(x-x_ref)*cosd(psi)+(y-y_ref)*sind(psi);
% y_e=-(x-x_ref)*sind(psi)+(y-y_ref)*cosd(psi);
% psi_e=psi-psi_ref;

x_e=x-x_ref;
y_e=y-y_ref;
psi_e=psi-psi_ref;

output=[x_e; y_e; psi_e];

end

