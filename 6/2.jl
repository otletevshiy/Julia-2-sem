function check_points_side(point1, point2, line_segment)
    # Получение координат точек
    x1, y1 = point1
    x2, y2 = point2

    # Получение координат точек прямой
    x3, y3 = line_segment[1]
    x4, y4 = line_segment[2]

    # Вычисление значений для определения стороны
    side1 = (x2 - x1) * (y3 - y1) - (x3 - x1) * (y2 - y1)
    side2 = (x2 - x1) * (y4 - y1) - (x4 - x1) * (y2 - y1)

    # Проверка, лежат ли точки по одну сторону от прямой
    if (side1 >= 0 && side2 >= 0) || (side1 < 0 && side2 < 0)
        return true  # Точки лежат по одну сторону от прямой
    else
        return false  # Точки лежат по разные стороны от прямой
    end
end
