% ex04_ellipse.m — Uniform mesh on an ellipse.
%
% The distance function here is only approximate (x^2/4 + y^2 - 1), but
% DistMesh still converges to a good mesh: boundary points are projected
% back onto the level set d = 0 at every step.

mip load --install distmesh

fd=@(p) p(:,1).^2/2^2+p(:,2).^2/1^2-1;
[p,t]=distmesh2d(fd,@huniform,0.2,[-2,-1;2,1],[]);

title('Ellipse');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
