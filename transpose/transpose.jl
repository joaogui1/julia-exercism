function transpose_strings(input)
    (input == []) && return []
    maxlen = maximum(map(length, input))
    println(maxlen)
    ans = []
    for (idx, str) in enumerate(input), j in 1:length(str)
        if j > size(ans, 1)
            aux = Array{Char}(undef, idx-1)
            fill!(aux, ' ')
            push!(ans, aux)
        end
        push!(ans[j], str[j])
        
    end
    [join(line) for line in ans]
end
