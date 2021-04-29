function [ output ] = velocity_error( input )
%VELOCITY_ERROR Calculation of the velocity error
%   Function compares current velocities of the vehicle to the virtual
%   velocities u_d, r_d and returns the difference as its output.

u_d=input(1);
r_d=input(2);
u=input(3);
v=input(4);
r=input(5);
u_e0in=input(6);
r_e0in=input(7);

load_system('jiang');
sim_time=get_param('jiang', 'SimulationTime');
   if(sim_time==0)
       u_e0=u-u_d;
       r_e0=r-r_d;
       u_e=u-u_d;
       r_e=r-r_d;
   else
       u_e=u-u_d;
       r_e=r-r_d;
       u_e0=u_e0in;
       r_e0=r_e0in;
   end

output=[u_e0; r_e0; u_e; r_e];

end

