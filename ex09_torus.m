% ex09_torus.m — Uniform mesh on a torus.
%
% The torus is the zero level set of the quartic distance-like function
% below (major radius 0.8, minor radius 0.2). The bounding box is flat in
% z because the torus is thin in that direction.

mip load --install distmesh

fd=@(p) (sum(p.^2,2)+.8^2-.2^2).^2-4*.8^2*(p(:,1).^2+p(:,2).^2);
[p,t]=distmeshsurface(fd,@huniform,0.1,[-1.1,-1.1,-.25;1.1,1.1,.25]);

title('Torus');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
