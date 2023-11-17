clc;
clearvars;
close all;
% *******************************************************************
d1 = 0.2;
d2 = 0;
f = 0;
n = 8;

angles = linspace(-pi/20,pi/20,8);

M_d1 = [1, d1, 0, 0;
        0, 1,  0, 0;
        0, 0,  1, d1;
        0, 0,  0, 1];

M_d2 = [1, d2, 0, 0;
        0, 1,  0, 0;
        0, 0,  1, d2;
        0, 0,  0, 1];

M_f = [1,    0, 0,    0;
       -1/f, 1, 0,    0;
       0,    0, 1,    0;
       0,    0, -1/f, 1];

for i = 1:n
    rays_in(:,i) = [0;angles(i);0;0];
end

rays_out = M_d1*rays_in;

% rays_in is a 4 x N matrix representing the rays emitted from an object
% rays_out is a 4 x N matrix representing the rays after propagating distance d
ray_z = [zeros(1,size(rays_in,2)); d1*ones(1,size(rays_in,2))];
plot(ray_z, [rays_in(1,:); rays_out(1,:)],'color',[0.9,0.5,0.4]);
hold on;

for i = 1:n
    rays_in(:,i) = [0.01;angles(i);0;0];
end
rays_out = M_d1*rays_in;
ray_z = [zeros(1,size(rays_in,2)); d1*ones(1,size(rays_in,2))];
plot(ray_z, [rays_in(1,:); rays_out(1,:)],"color",[0.2,0.5,0.1]);
