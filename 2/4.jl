function bisection1(f::Function, a, b, eps)
    f_a = f(a)
    while (b - a > eps)
        t = (a + b)/2
        f_t = f(t)
        if (f_t == 0)
            return t
        elseif (f_t * f_a < 0)
            b = t
        else
            a, f_a = t, f_t
        end
    end
    return (a+b) / 2
end

function f(x)
    return x * x - 3 * x
end

print(bisection1(f, -1, 2, 0.01))
