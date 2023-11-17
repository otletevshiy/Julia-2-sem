function log_2(n)   #Эта функция использует интерактивный метод для нахождения логарифма по основанию 2.
    log_Value = -1
    while (n > 0)
        log_Value = log_Value + 1
        n = n / 2
    end
    return log_Value
end

function log(a::Int64, b::Int64)   #Эта функция использует log_2 для нахождения  логарифма числа b по основанию 2 и делит его на логарифм числа a по основанию 2.
    return log_2(b) / log_2(a)
end
