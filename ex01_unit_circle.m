% ex01_unit_circle.m — Uniform mesh on the unit circle.
%
% The geometry is given by a signed distance function fd(p): negative
% inside the domain, positive outside, zero on the boundary. Here
% d = r - 1, so the domain is the disk of radius 1. @huniform asks for a
% uniform element size.

mip load --install distmesh

fd=@(p) sqrt(sum(p.^2,2))-1;
[p,t]=distmesh2d(fd,@huniform,0.2,[-1,-1;1,1],[]);

title('Unit circle');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
