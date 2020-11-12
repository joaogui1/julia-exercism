"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    counter = Dict(['A'=>0, 'C'=>0, 'G'=>0, 'T'=>0])
    for c in strand
        if c in keys(counter)
            counter[c] += 1
        else
            throw(DomainError(strand))
        end
    end
    return counter
end
