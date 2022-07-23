function dummy_create(input_mat::Vector)
    
    # Initialize
    n1  = length(input_mat)
    n2  = length(unique(input_mat))

    # Preallocate output
    mat = zeros(n1, n2)

    # Fill in output
    for i in 1:length(unique(input_mat))
        mat[:,i] = input_mat .== unique(input_mat)[i]
    end

    # Return
    return mat

end
