include("enforceGeometry.jl")
include("hexagon.jl")
function circlemesh(xc, yc, radius, h)

    # Generate a Hexagon, then refine some times
    node,elem = hexagon(xc,yc,radius);

    # refine the mesh until it reaches the 
    # desired subinterval length

    for i = 1:ceil(1/(2*h))
        node,elem,~ = uniformrefine(node,elem);
        node = enforceGeometry(node,elem,radius);
    end
    return node, elem
end
