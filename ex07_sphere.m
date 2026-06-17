% ex07_sphere.m — Uniform mesh on the unit sphere.
%
% distmeshsurface meshes the zero level set of a 3-D distance function.
% dsphere(p,xc,yc,zc,r) is the signed distance to a sphere; here the unit
% sphere centered at the origin. Drag to rotate the result.

mip load --install distmesh

fd=@(p) dsphere(p,0,0,0,1);
[p,t]=distmeshsurface(fd,@huniform,0.2,1.1*[-1,-1,-1;1,1,1]);

title('Unit sphere');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
