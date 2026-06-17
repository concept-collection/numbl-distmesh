% ex08_sphere_graded.m — Graded mesh on the unit sphere.
%
% Same sphere as ex07, but the size function grows with distance from the
% north pole (0,0,1), so triangles are small near the pole and large near
% the south pole.

mip load --install distmesh

fd=@(p) dsphere(p,0,0,0,1);
fh=@(p) 0.05+0.5*dsphere(p,0,0,1,0);
[p,t]=distmeshsurface(fd,fh,0.15,1.1*[-1,-1,-1;1,1,1]);

title('Graded sphere');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
