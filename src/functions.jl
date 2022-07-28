@doc """

dummycreate(inputmat::Vector)

`dummycreate` allows to create a matrix of zeros and ones from a vector of groups. The input argument `inputmat` must be a `Vector`. 

# Examples
```julia-repl
julia> dummycreate([1.0, 2.0])

2×2 Matrix{Float64}:
 1.0  0.0
 0.0  1.0

dummycreate(['a', 'b'])

2×2 Matrix{Float64}:
 1.0  0.0
 0.0  1.0

dummycreate([1, 'a', 'b', 1])

4×3 Matrix{Float64}:
 1.0  0.0  0.0
 0.0  1.0  0.0
 0.0  0.0  1.0
 1.0  0.0  0.0
```

""" ->

function dummycreate(inputmat::Vector)
    
    # Initialize
    n1  = length(inputmat)
    n2  = length(unique(inputmat))

    # Preallocate output
    mat = zeros(n1, n2)

    # Fill in output
    for i in 1:length(unique(inputmat))
        mat[:,i] = inputmat .== unique(inputmat)[i]
    end

    # Return
    return mat

end
