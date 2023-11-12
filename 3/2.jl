function Resheto_Eratosfena(n::Integer)
    simple_i = ones(Bool, n)
    simple_i[begin] = false
    i = 2
    simple_i[i^2:i:n] .= false 
    i=3
   
    while i <= n
        simple_i[i^2:2i:n] .= false
        i+=1
        while i <= n && simple_i[i] == false
            i+=1
        end

    end
    return findall(simple_i)
end
