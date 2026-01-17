# Basic Mesh Generation for Julia
A series of functions used to generate quasi-uniform [rectangular](https://github.com/LukasOstien/Basic-Mesh-Generation-for-Julia/blob/main/Subroutines/squaremesh.jl) and [circular](https://github.com/LukasOstien/Basic-Mesh-Generation-for-Julia/blob/main/Subroutines/circlemesh.jl) meshes. If desired, a function to [uniformly refine](https://github.com/LukasOstien/Basic-Mesh-Generation-for-Julia/blob/main/Subroutines/uniformrefine.jl) a mesh is provided. When refining a circle mesh, [enforceGeometry.jl](https://github.com/LukasOstien/Basic-Mesh-Generation-for-Julia/blob/main/Subroutines/enforceGeometry.jl) can be used to enforce the geometry of a circle.<br>

Some example meshes are shown here: <br>
![](https://github.com/LukasOstien/Basic-Mesh-Generation-for-Julia/blob/main/Images/plot_1.png) 
![](https://github.com/LukasOstien/Basic-Mesh-Generation-for-Julia/blob/main/Images/plot_2.png) 
![](https://github.com/LukasOstien/Basic-Mesh-Generation-for-Julia/blob/main/Images/plot_3.png) 
![](https://github.com/LukasOstien/Basic-Mesh-Generation-for-Julia/blob/main/Images/plot_4.png) <br>
This was heavily inspired by the much more sophisticated library for MATLAB, [iFem](https://github.com/lyc102/ifem), written by Long Chen, a professor I had the privelege of having when taking a PDEs class at UC Irvine. <br>




