function com!(arr, i, g)
    if i < 0 || g < 0 
        return;
    end
    if arr[i] > arr[g]
        arr[i], arr[g] = arr[g], arr[i]
        com!(arr, i, 2i - g)
    end
end

function Shell_sort!(arr)
    len = length(arr)   
    step = div(len, 2)          

    while step >= 1
        for i in 1:len - step       
            com!(arr,i,i + step)
        end
        step = div(step, 2)
    end
    return arr
end

arr = [1, 1, 5, 4, 3, 2, 7, 2, 8, 9]    
print(Shell_sort!(arr))
