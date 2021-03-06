# cell-migration-similarity-soln

<a href="https://github.com/tstepien/cell-migration-similarity-soln/"><img src="https://img.shields.io/badge/GitHub-tstepien%2Fcell--migration--similarity--soln-blue.svg" /></a> <a href="http://dx.doi.org/10.3934/dcds.2015.35.3203"><img src="https://img.shields.io/badge/doi-10.3934%2Fdcds.2015.35.3203-orange.svg" /></a> <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" /></a>

The MATLAB code contained in the cell-migration-similarity-soln project was developed for the work described in:
><a href="http://github.com/tstepien/">Tracy L. Stepien</a> and <a href="http://math.asu.edu/~halsmith/">Hal L. Smith</a>, Existence and uniqueness of similarity solutions of a generalized heat equation arising in a model of cell migration, *Discrete Contin. Dyn. Syst.*, 35 (2015), 3203-3216, DOI: [10.3934/dcds.2015.35.3203](http://dx.doi.org/10.3934/dcds.2015.35.3203).

Numerical solutions of the boundary value problem (Equation 20)

![system of equations](fig/equations.svg)

where c, n, and a are parameters, are obtained by using a shooting method combined with the secant method.

## Programs

+ [program_solve_bvp.m](program_solve_bvp.m): run this program to solve the boundary value problem
+ [program_buildstablemanifold.m](program_buildstablemanifold.m): run this program to solve many boundary value problems and save the corresponding x(0) and x'(0) values in a .mat file
+ [program_solve_ivp.m](program_solve_ivp.m): run this program to solve the initial value problem (no boundary condition at t->infinity)

## Plots

+ [plot_of_sims.m](plot_of_sims.m) - reproduce Figure 1

![Figure 1A](fig/fig1a.png)
![Figure 1B](fig/fig1b.png)

+ [plot_of_manifold.m](plot_of_manifold.m) - reproduce Figure 3

![Figure 3](fig/fig3.png)

## Auxiliary Files

+ [secant.m](secant.m)
+ [selfsimJac.m](selfsimJac.m)
+ [selfsimODE.m](selfsimODE.m)
+ [shoot.m](shoot.m)
+ [solveBVP.m](solveBVP.m)
+ [solveIVP.m](solveIVP.m)

## Data Files

+ [data/n0_data.mat](data/n0_data.mat)
+ [data/n2_data.mat](data/n2_data.mat)
+ [data/n3_data.mat](data/n3_data.mat)
+ [data/n5_data.mat](data/n5_data.mat)
+ [data/samplesim_n2_c25_y0_np5.mat](data/samplesim_n2_c25_y0_np5.mat)
+ [data/samplesim_n2_c25_y0_p5.mat](data/samplesim_n2_c25_y0_p5.mat)

## Licensing

Copyright 2013-2015 [Tracy Stepien](http://github.com/tstepien/).  This is free software made available under the MIT License. For details see the LICENSE file.
