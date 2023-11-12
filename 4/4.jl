function Gauss_backward(A, B)
    n = size(A, 1)
    X = zeros(n)
    
    for i = n:-1:1
        X[i] = B[i] / A[i, i]
        
        for j = i-1:-1:1
            B[j] -= A[j, i] * X[i]
        end
    end
    
    return X
end



