function product = myprod(inputArray)
    rows = size(inputArray, 1);
    cols = size(inputArray, 2);
    product = 0;
    for i = 0: rows
        for j = 0: cols
            product = product * inputArray(rows, cols);
        end
    end
end

