% ex05_square_nonuniform.m — Unit square with point and line size sources.
%
% The size function fh refines toward a point (the origin) and a line
% segment, capped at 0.15. This shows how to drive local resolution with
% a hand-written size function.

mip load --install distmesh

fd=@(p) drectangle(p,0,1,0,1);
fh=@(p) min(min(0.01+0.3*abs(dcircle(p,0,0,0)), ...
             0.025+0.3*abs(dpoly(p,[0.3,0.7; 0.7,0.5]))),0.15);
[p,t]=distmesh2d(fd,fh,0.01,[0,0;1,1],[0,0;1,0;0,1;1,1]);

title('Square with point and line size sources');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
