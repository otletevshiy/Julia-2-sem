function gcd(a,b)
    while b != 0
        a, b = b, a % b 
    end
    return abs(a)
end
