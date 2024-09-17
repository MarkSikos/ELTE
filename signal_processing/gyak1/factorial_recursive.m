function result = factorial_recursive(i1)
    if i1 > 1
        result = i1 * factorial_recursive(i1 - 1);
    elseif i1 == 1
        result = 1 * i1;
    elseif i1 == 0
        result = 1;
    else
        error("Invalid input, i1 must be a non-negative integer");
    end
end
