function findBoundary(elem)
    # Count edge occurrences
    edge_count = Dict{Tuple{Int,Int},Int}()
    
    for t in 1:size(elem, 1)
        i, j, k = elem[t, 1], elem[t, 2], elem[t, 3]
        
        # Sort edges to ensure consistent ordering
        edges = [(min(j, k), max(j, k)),
                 (min(k, i), max(k, i)),
                 (min(i, j), max(i, j))]
        
        for e in edges
            edge_count[e] = get(edge_count, e, 0) + 1
        end
    end
    
    # Boundary edges appear only once
    bdEdges = [e for (e, count) in edge_count if count == 1]
    
    # Get unique boundary nodes
    bdNodesSet = Set{Int}()
    for (i, j) in bdEdges
        push!(bdNodesSet, i, j)
    end
    
    return sort(collect(bdNodesSet))
end
