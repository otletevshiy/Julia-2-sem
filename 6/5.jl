function pointInsidePolygon(polygon::Array{Tuple{Float64, Float64}, 1}, point::Tuple{Float64, Float64})
    num_vertices = length(polygon)
    c = false
    i = 1
    j = num_vertices

    for i = 1:num_vertices
        if (((polygon[i][2] > point[2]) != (polygon[j][2] > point[2])) &&
            (point[1] < (polygon[j][1] - polygon[i][1]) * (point[2] - polygon[i][2]) / (polygon[j][2] - polygon[i][2]) + polygon[i][1]))
            c = !c
        end
        j = i
    end

    return c
end
