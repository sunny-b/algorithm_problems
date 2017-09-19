def palindrome?(queue)
    return true if queue.size < 2

    left = 0
    right = queue.size - 1

    while left <= right
        return false if queue[left] != queue[right]

        left += 1
        right -= 1
    end

    true
end

palindrome? [1, nil, nil, 1]
