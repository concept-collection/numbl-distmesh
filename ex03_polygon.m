% ex03_polygon.m — A polygon given by its vertices.
%
% dpoly is the signed distance to a polygon defined by the vertex list pv
% (first vertex repeated at the end to close it). pv is passed both as the
% distance-function parameter and as the set of fixed points, so the mesh
% boundary follows the polygon edges exactly.

mip load --install distmesh

pv=[-0.4 -0.5;0.4 -0.2;0.4 -0.7;1.5 -0.4;0.9 0.1;
    1.6 0.8;0.5 0.5;0.2 1;0.1 0.4;-0.7 0.7;-0.4 -0.5];
[p,t]=distmesh2d(@dpoly,@huniform,0.1,[-1,-1; 2,1],pv,pv);

title('Polygon');
fprintf('mesh: %d nodes, %d triangles\n', size(p,1), size(t,1));
