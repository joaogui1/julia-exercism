function bob(stimulus)
    stimulus = strip(stimulus)
    letters = filter(isletter, collect(stimulus))
    num_letters = size(letters)[1]
    strupper = x -> isuppercase.(x)
    
    if size(letters)[1] > 0 && (prod ∘ strupper)(letters)
        if stimulus[end] == '?'
            return "Calm down, I know what I'm doing!"
        else
            return "Whoa, chill out!"
        end
    elseif isempty(stimulus)
        return "Fine. Be that way!"
    elseif stimulus[end] == '?'
        return "Sure."
    else
        "Whatever."
    end
end
