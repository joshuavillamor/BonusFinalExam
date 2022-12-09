function merge_sort(arr)
    # If the input array has zero or one element, it is already sorted.
    if length(arr) <= 1
        return arr
    end

    # Split the input array into two halves.
    mid = div(length(arr), 2)
    left = merge_sort(arr[1:mid])
    right = merge_sort(arr[mid+1:end])

    # Merge the two sorted halves.
    result = merge(left, right)

    return result
end

function merge(left, right)
    # Initialize the result array.
    result = []

    # While there are elements in both input arrays, compare the first elements
    # of each array and append the smaller element to the result array.
    while length(left) > 0 && length(right) > 0
        if left[1] <= right[1]
            push!(result, left[1])
            left = left[2:end]
        else
            push!(result, right[1])
            right = right[2:end]
        end
    end

    # Append the remaining elements in the left array to the result array, if any.
    while length(left) > 0
        push!(result, left[1])
        left = left[2:end]
    end

    # Append the remaining elements in the right array to the result array, if any.
    while length(right) > 0
        push!(result, right[1])
        right = right[2:end]
    end

    return result
end

arr = [5, 1, 4, 2, 8]
sorted_arr = merge_sort(arr)
println(sorted_arr)
