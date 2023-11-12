# Определение типа Vector2D
struct Vector2D
    x::Float64
    y::Float64
end

# Определение функций для типа Vector2D
function length(v::Vector2D)
    return sqrt(v.x^2 + v.y^2)
end

function dot(v1::Vector2D, v2::Vector2D)
    return v1.x*v2.x + v1.y*v2.y
end

function normalize(v::Vector2D)
    len = length(v)
    return Vector2D(v.x/len, v.y/len)
end

function cross(v1::Vector2D, v2::Vector2D)
    return v1.x*v2.y - v1.y*v2.x
end

# Определение типа Segment2D
struct Segment2D
    start::Vector2D
    finish::Vector2D
end

# Определение функции для типа Segment2D
function length(s::Segment2D)
    return length(s.finish - s.start)
end
