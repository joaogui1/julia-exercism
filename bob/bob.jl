function bob(stimulus)
    last_idx = length(stimulus)
    while last_idx > 0 && isspace(stimulus[last_idx])
        last_idx = prevind(stimulus, last_idx, 1)
    end
    isupperletter(x) = isuppercase(x) || !isletter(x)

    if any(isletter, stimulus) && all(isupperletter, stimulus)
        if stimulus[last_idx] == '?'
            return "Calm down, I know what I'm doing!"
        else
            return "Whoa, chill out!"
        end
    elseif last_idx == 0
        return "Fine. Be that way!"
    elseif stimulus[last_idx] == '?'
        return "Sure."
    else
        "Whatever."
    end
end