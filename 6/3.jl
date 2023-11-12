function check_points_side(F, point1, point2)
    # Вычисляем значение функции F для точек
    value1 = F(point1[1], point1[2])
    value2 = F(point2[1], point2[2])
    
    # Проверяем, лежат ли точки по одну сторону от кривой
    if sign(value1) == sign(value2)
        return true  # Точки лежат по одну сторону от кривой
    else
        return false  # Точки лежат по разные стороны от кривой
    end
end
