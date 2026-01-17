using Plots
function displayMesh(node,elem)
    p = plot(size=(800, 600), aspect_ratio=:equal, legend=false)
    
    # Plot triangles
    nelm = size(elem, 1);
    for i in 1:nelm
        tri = node[elem[i,:], :]
        # Close the triangle
        tri_closed = vcat(tri, tri[1:1,:])
        plot!(p, tri_closed[:,1], tri_closed[:,2])
    end
    
    # Plot nodes
    scatter!(p, node[:,1], node[:,2])
    return p
end
