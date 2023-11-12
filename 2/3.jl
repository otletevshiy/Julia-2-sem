function log_2(n)
    log_Value = -1
    while (n > 0)
        log_Value = log_Value + 1
        n = n / 2
    end
    return log_Value
end

function log(a::Int64, b::Int64)
    return log_2(b) / log_2(a)
end
