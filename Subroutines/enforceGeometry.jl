include("findBoundary.jl")
function enforceGeometry(node,elem,R)
    # ensures boundary nodes are in the shape of a circle
    bdNode = findBoundary(elem);
    r = sqrt.(node[bdNode,1].^2+node[bdNode,2].^2);
    node[bdNode,1]=R*node[bdNode,1]./r;
    node[bdNode,2]=R*node[bdNode,2]./r;
    return node
end
