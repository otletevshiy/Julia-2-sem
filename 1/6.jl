struct Polynom{T}
    coeffs::Vector{T}

    function Polynom(coeffs::Vector{T}) where {T<:Number}
        while length(coeffs) > 1 && coeffs[end] == zero(T)
            pop!(coeffs)
        end
        return new{T}(coeffs)
    end
end


import Base: +, -, *, show

#Операция +
+(a::Polynom{T}, b::Polynom{T}) where {T<:Number} = Polynom{T}(a.coeffs + b.coeffs)

#Операция -
-(a::Polynom{T}, b::Polynom{T}) where {T<:Number} = Polynom{T}(a.coeffs - b.coeffs)

#Унарный -
-(a::Polynom{T}) where {T<:Number} = Polynom{T}(-a.coeffs)
