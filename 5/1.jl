function Insert_sort!(array::AbstractVector{T})::AbstractVector{T} where T <: Number
    n = 1

    while n < length(array) 
        n += 1
        i = n
        while i > 1 && array[i-1] > array[i]
            array[i], array[i-1] = array[i-1], array[i]
            i -= 1
        end
    end
    return array
end

Insert_sort(array::AbstractVector)::AbstractVector = Insert_sort!(copy(array))
