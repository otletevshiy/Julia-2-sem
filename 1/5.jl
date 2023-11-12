struct Residue{T,M}
    a::T
end

# Оператор сложения
function Base.:+(x::Residue{T,M}, y::Residue{T,M}) where {T,M}
    Residue{T,M}((x.a + y.a) % M)
end

# Оператор вычитания
function Base.:-(x::Residue{T,M}, y::Residue{T,M}) where {T,M}
    Residue{T,M}((x.a - y.a) % M)
end

# Унарный минус
function Base.:-(x::Residue{T,M}) where {T,M}
    Residue{T,M}((-x.a) % M)
end

# Оператор умножения
function Base.:*(x::Residue{T,M}, y::Residue{T,M}) where {T,M}
    Residue{T,M}((x.a * y.a) % M)
end

# Оператор возведения в степень
function Base.:^(x::Residue{T,M}, n::Integer) where {T,M}
    Residue{T,M}(powmod(x.a, n, M))
end

# Обращение обратимых элементов
function inverse(x::Residue{T,M}) where {T,M}
    gcd_val, inv_val, _ = gcdx(x.a, M)
    if gcd_val != one(T)
        error("Element is not invertible")
    end
    Residue{T,M}(inv_val)
end

# Определение вывода значения в REPL
function Base.display(x::Residue{T,M}) where {T,M}
    display(x.a)
end
