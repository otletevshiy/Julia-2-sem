function Newton_(f, df, x0, tol, max_i)
    x = x0
    i = 0
    while abs(f(x)) > tol && i < max_i
        x -= f(x) / df(x)
        i += 1
    end
    return x
end

function f(x)
    return cos(x) - x
end

function df(x)
    return -sin(x) - 1
end
