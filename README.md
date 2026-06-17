# DistMesh examples

An interactive companion to
[DistMesh](https://github.com/popersson/DistMesh) — Per-Olof Persson and
Gilbert Strang's simple mesh generator in MATLAB. Every example from the
DistMesh README, runnable in your browser through [numbl](https://numbl.org):
pick a script on the left and click **Run**.

DistMesh describes a domain by a *signed distance function* (negative inside,
positive outside) and grows a well-shaped triangular mesh by Delaunay
retriangulation plus force-based smoothing of the node positions.

Each script begins with

```matlab
mip load --install distmesh
```

which fetches DistMesh on first use.

## 2-D meshes (`distmesh2d`)

- [`ex01_unit_circle.m`](ex01_unit_circle.m) — uniform mesh on the unit circle.
- [`ex02_rectangle_hole.m`](ex02_rectangle_hole.m) — rectangle with a circular
  hole, refined at the hole.
- [`ex03_polygon.m`](ex03_polygon.m) — a polygon from its vertices.
- [`ex04_ellipse.m`](ex04_ellipse.m) — uniform mesh on an ellipse.
- [`ex05_square_nonuniform.m`](ex05_square_nonuniform.m) — square with point and
  line size sources.
- [`ex06_naca_airfoil.m`](ex06_naca_airfoil.m) — NACA0012 airfoil in a circular
  far field.

## Surface meshes (`distmeshsurface`)

- [`ex07_sphere.m`](ex07_sphere.m) — uniform mesh on the unit sphere.
- [`ex08_sphere_graded.m`](ex08_sphere_graded.m) — graded mesh on the sphere.
- [`ex09_torus.m`](ex09_torus.m) — uniform mesh on a torus.
- [`ex10_ellipsoid.m`](ex10_ellipsoid.m) — uniform mesh on an ellipsoid.

## Notes

All examples animate as the mesh relaxes; drag to rotate the surface meshes.
`ex06_naca_airfoil.m` is by far the heaviest and can take up to a minute or so
in the browser. The geometries
use the helper distance functions `dcircle`, `drectangle`, `dpoly`, `dsphere`,
`ddiff`, ... that ship with DistMesh.

## Reference

P.-O. Persson, G. Strang, *A Simple Mesh Generator in MATLAB*, SIAM Review
46(2), 329–345, 2004.

## How it's deployed

On every push to `main`, the workflow in
[`.github/workflows/deploy.yml`](.github/workflows/deploy.yml) bundles these
files with the numbl browser IDE and publishes the result to GitHub Pages. Edit
`numbl-project.json` to change the title or which file opens first.
