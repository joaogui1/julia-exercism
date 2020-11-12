"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError(""))
    end
    ans = 0
    
    for p in zip(a, b)
        ans += (p[1] != p[2])
    end
    ans    
end
