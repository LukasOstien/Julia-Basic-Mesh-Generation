function uniqueElems(A)
    rows = eachrow(A)
    
    # Use dictionary for O(1) lookups
    unique_dict = Dict{Vector{eltype(A)}, Int}()
    j = zeros(Int, size(A, 1))
    unique_rows = Vector{Vector{eltype(A)}}()
    
    # Build mapping and collect unique rows
    for (idx, row) in enumerate(rows)
        row_vec = collect(row)
        if !haskey(unique_dict, row_vec)
            unique_dict[row_vec] = length(unique_rows) + 1
            push!(unique_rows, row_vec)
        end
        j[idx] = unique_dict[row_vec]
    end
    
    
    
    # Convert to matrix
    sortA = reduce(vcat, [u' for u in unique_rows])
    
    return sortA,j
end
