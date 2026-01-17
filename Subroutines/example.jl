using Plots
include("squaremesh.jl")
include("assembling.jl")
include("uniformrefine.jl")
include("displayMesh.jl")
include("circlemesh.jl")
include("enforceGeometry.jl")
include("debugMesh.jl")

node,elem = squaremesh([0,1,0,1],0.25);
cnode,celem = circlemesh(0,0,1,0.25);
fineNode,fineElem,HB = uniformrefine(node,elem);
cfineNode,cfineElem,cHB = uniformrefine(cnode,celem);
cfineNode = enforceGeometry(cfineNode,cfineElem,1);
f = displayMesh(node,elem)
g = displayMesh(fineNode,fineElem)
c = displayMesh(cnode,celem)
d = displayMesh(cfineNode,cfineElem)
display(f)
display(g)
display(c)
display(d)
