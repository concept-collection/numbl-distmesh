% ex11_mesh_nd.m — Uniform tetrahedral mesh of the 3-D unit ball (distmeshnd).
%
% distmeshnd is the general N-D mesh generator; here it fills the solid unit
% ball (signed distance sqrt(sum(p.^2,2))-1) with a uniform mesh at edge
% length 0.2. The plot shows a cut-away (p(:,2)>0) of the tetrahedra.

mip load --install distmesh

disp('3-D Unit ball')
fd=@(p) sqrt(sum(p.^2,2))-1;
[p,t]=distmeshnd(fd,@huniform,0.2,[-1,-1,-1;1,1,1],[]);
