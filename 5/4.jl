function merge_sort(arr)
    if length(arr) ≤ 1
        return arr
    end

    middle = div(length(arr), 2)
    left = merge_sort(arr[1:middle])
    right = merge_sort(arr[middle+1:end])

    return merge(left, right)
end

function merge(left, right)
    result = similar(left, length(left) + length(right))
    i, j, k = 1, 1, 1

    while i ≤ length(left) && j ≤ length(right)
        if left[i] ≤ right[j]
            result[k] = left[i]
            i += 1
        else
            result[k] = right[j]
            j += 1
        end
        k += 1
    end

    while i ≤ length(left)
        result[k] = left[i]
        i += 1
        k += 1
    end

    while j ≤ length(right)
        result[k] = right[j]
        j += 1
        k += 1
    end

    return result
end

arr = [5, 2, 9, 1, 7, 6]
sorted_arr = merge_sort(arr)
println(sorted_arr)  # Выведет [1, 2, 5, 6, 7, 9]
