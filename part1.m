clc;
clearvars;
close all;
% *******************************************************************
d1 = 0;
d2 = 0;
f = 0;

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

% rays_in is a 4 x N matrix representing the rays emitted from an object
% rays_out is a 4 x N matrix representing the rays after propagating distance d
ray_z = [zeros(1,size(rays_in,2)); d*ones(1,size(rays_in,2))];
plot(ray_z, [rays_in(1,:); rays_out(1,:)]);