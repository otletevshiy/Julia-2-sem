struct Point
    x::Float64
    y::Float64
end

function is_convex_polygon(points::Vector{Point})
    num_points = length(points)
    
    if num_points < 3
        return false  # Многоугольник должен иметь минимум 3 вершины
    end
    
    prev_cross_product = 0.0
    current_cross_product = 0.0
    
    for i in 1:num_points
        prev_point = points[mod1(i-1, num_points)]
        current_point = points[i]
        next_point = points[mod1(i+1, num_points)]
        
        # Вычисляем векторы между точками
        vec1 = Point(prev_point.x - current_point.x, prev_point.y - current_point.y)
        vec2 = Point(next_point.x - current_point.x, next_point.y - current_point.y)
        
        # Вычисляем векторное произведение
        cross_product = vec1.x * vec2.y - vec1.y * vec2.x
        
        if cross_product != 0.0
            if cross_product * prev_cross_product < 0.0
                return false  # Знаки векторных произведений различны, многоугольник невыпуклый
            elseif prev_cross_product == 0.0
                current_cross_product = cross_product
            end
        end
        
        prev_cross_product = cross_product
    end
    
    # Если не было изменений знака векторного произведения, многоугольник выпуклый
    return true
end