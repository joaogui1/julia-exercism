function to_rna(dna)
    ans = collect(dna)
    for i in 1:size(ans, 1)
        if (ans[i] == 'G')
            ans[i] = 'C'
        elseif (ans[i] == 'C')
            ans[i] = 'G'
        elseif (ans[i] == 'T')
            ans[i] = 'A'
        elseif (ans[i] == 'A')
            ans[i] = 'U'
        else
            throw(ErrorException(""))
        end
    end
    return join(ans)
end

