function invmod1(a::T, M::T) where T
    d, x, y = extended_euclidean_algorithm(a, M)
    if d == 1
        return mod(x, M)
    else
        return nothing
    end
end
