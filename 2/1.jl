function Fast_pow(a, n)   #Эта функция использует метод быстрого возведения числа в степень.
    s=n
    r=a
    t=1
 
    while s>0
        if iseven(s)
            s /= 2 
            r *= r
        else
            s -= 1 
            t *= r
        end
    end
    return t
end
