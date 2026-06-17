% ex02_rectangle_hole.m — Rectangle with a circular hole.
%
% ddiff subtracts the circle from the rectangle to form the domain. The
% size function fh grows with distance from the circle, so elements are
% small at the hole and coarsen outward. The last argument fixes the four
% corners so they stay put.

mip load --install distmesh

fd=@(p) ddiff(drectangle(p,-1,1,-1,1),dcircle(p,0,0,0.5));
fh=@(p) 0.05+0.3*dcircle(p,0,0,0.5);
[p,t]=distmesh2d(fd,fh,0.05,[-1,-1;1,1],[-1,-1;-1,1;1,-1;1,1]);

title('Rectangle with circular hole');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
