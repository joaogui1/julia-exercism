function clean(phone_number)
    clean = filter(isdigit, collect(phone_number))
    if size(clean, 1) > 10 && clean[1] == '1'
        clean = clean[2:end]
    end
    if size(clean, 1) != 10 || clean[1] < '2' || clean[4] < '2' 
        return nothing
    end
    return join(clean) 
end
