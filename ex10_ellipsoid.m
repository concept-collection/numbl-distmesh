% ex10_ellipsoid.m — Uniform mesh on an ellipsoid.
%
% An approximate distance function for the ellipsoid with semi-axes
% 2, 1, 1.5. As in the 2-D ellipse, the projection step keeps boundary
% nodes on the true surface despite the approximation.

mip load --install distmesh

fd=@(p) p(:,1).^2/4+p(:,2).^2/1+p(:,3).^2/1.5^2-1;
[p,t]=distmeshsurface(fd,@huniform,0.2,[-2.1,-1.1,-1.6; 2.1,1.1,1.6]);

title('Ellipsoid');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
