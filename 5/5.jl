function quick_sort(arr)
    if length(arr) <= 1
        return arr
    end

    pivot = arr[rand(1:length(arr))]
    lesser = [x for x in arr if x < pivot]
    equal = [x for x in arr if x == pivot]
    greater = [x for x in arr if x > pivot]

    return vcat(quick_sort(lesser), equal, quick_sort(greater))
end

arr = [5, 2, 9, 1, 7]
sorted_arr = quick_sort(arr)
println(sorted_arr)
