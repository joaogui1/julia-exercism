function encode(s)
    length(s) == 0 && return s
    counter = 0
    ant = s[1]
    ret = []
    for c in s
        if (c == ant)
            counter += 1
        else
            if (counter > 1)
                push!(ret, "$counter")
            end
            push!(ret, ant)
            counter = 1
            ant = c
        end
    end
    if (counter > 1)
        push!(ret, "$counter")
    end
    push!(ret, ant)
    join(ret)
end



function decode(s)
    length(s) == 0 && return s
    ret = []
    counter = 0
    for c in s
        if isdigit(c)
            counter = 10*counter + parse(Int, c)
        else
            if (counter > 0)
                push!(ret, c^counter)
                counter = 0 
            else
                push!(ret, c)
            end
        end
    end
    join(ret)
end
