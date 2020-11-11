function valid(sides)
    sides[1] > 0 && sides[1] + sides[2] > sides[3]
end

function is_equilateral(sides)
    sort!(sides)
    if valid(sides) && (sides[1] == sides[3])
        return true
    end
    return false
end

function is_isosceles(sides)
    sort!(sides)
    if valid(sides) && (sides[1] == sides[2] || sides[2] == sides[3])
        return true
    end
    return false
end

function is_scalene(sides)
    sort!(sides)
    if valid(sides) && (sides[1] != sides[2] && sides[2] != sides[3])
        return true
    end
    return false
end
