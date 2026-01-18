using MeshGrid
function squaremesh(square,h)
    # Generate a rectangular mesh
    x0 = square[1]; x1 = square[2]; 
    y0 = square[3]; y1 = square[4];
    x,y = meshgrid(x0:h:x1,y0:h:y1);
    node = node = hcat(vec(x), vec(y));
    nx = length(x0:h:x1);
    ny = length(y0:h:y1);
    i = 1:(nx-1);
    j = 1:(ny-1);
    
    # Create linear indices for all lower-left corners
    ll = vec([i + (jj-1)*nx for jj in j, i in i]);
    
    # Create triangles (each square gives 2 triangles)
    elem = vcat(
        # Lower triangles
        hcat(ll, ll.+1, ll.+nx),
        # Upper triangles  
        hcat(ll.+1, ll.+nx.+1, ll.+nx)
    );
    return node,elem
end

