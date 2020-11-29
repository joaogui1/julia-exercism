function transpose_strings(input)
    (input == []) && return []
    maxlen = maximum(map(length, input))
    println(maxlen)
    input = map(s->rpad(s, maxlen), input)
    ans = [[] for _ in 1:maxlen]
    for str in input, j in 1:maxlen
        push!(ans[j], str[j])
        
    end
    [rstrip(join(line)) for line in ans]
end
