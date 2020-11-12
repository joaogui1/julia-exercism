function score(x, y)
    dist = sqrt(x^2 + y^2)
    if dist <= 5
        return dist <= 1 ? 10 : 5
    else
        return dist > 10 ? 0 : 1
    end
end
