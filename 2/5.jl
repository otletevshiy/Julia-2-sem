function solve_cos_x() #Эта функция решает уравнени cos(x) = x методом бисекциина интервале [0.0,1.0] с заданной точностью eps (1e-6).
    a = 0.0
    b = 1.0
    eps = 1e-6
    
    while b - a > eps
        c = (a + b) / 2
        func_ = cos(c) - c
        
        if abs(func_) < eps
            return c
        elseif func_ < 0
            a = c
        else
            b = c
        end
    end
    
    return (a + b) / 2
end
