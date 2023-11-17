function Formula_Bine(n)   #Эта функция исользует формулу Бине для эффективного вычисления n-го числа Фибоначчи.
    root_5 = 5 ^ 0.5
    phi = ((1 + root_5) / 2)

    a = (Fast_pow(phi,n) - (Fast_pow((-phi), -n)) ) / root_5

    return round(a)
end
print(Formula_Bine(9))
