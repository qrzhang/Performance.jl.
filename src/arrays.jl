export sequence_of_three, alternate_items

function sequence_of_three(start::Int)
    out = Int[]
    push!(out, start, start+1, start+2)
    return out
end

function sequence_of_three(start::Float64)
    out = Float64[]
    push!(out, start, start+1.0, start+2.0)
    return out
end


function alternate_items(nrepeats::Integer, item1, item2)
    if typeof(item1) != typeof(missing) && typeof(item2) != typeof(missing)
        out = zeros(Int64,2*nrepeats)
        out[1:2:2*nrepeats] .= item1
        out[2:2:2*nrepeats] .= item2
    else
        out = zeros(Union{Missing,Int64},2*nrepeats)
        out[1:2:2*nrepeats] .= item1
        out[2:2:2*nrepeats] .= item2
    end
    return out
end