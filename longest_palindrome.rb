def longest_palindrome(s)
    return s if s.length < 2

    min_start = 0
    max_len = 1
    i = 0

    while i < s.size
        break if s.size - i <= max_len / 2

        k = j = i
        k += 1 while k < s.size && s[k] == s[k+1]
        i = k + 1

        while k < s.size - 1 && j > 0 && s[k + 1] == s[j - 1]
            k += 1
            j -= 1
        end

        new_len = k - j + 1

        if new_len > max_len
            max_len = new_len
            min_start = j
        end
    end

    s.slice(min_start, max_len)
end

longest_palindrome "bananas"
