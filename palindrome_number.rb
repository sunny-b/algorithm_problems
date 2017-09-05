def is_palindrome(x)
    return false if x < 0 || (x != 0 && x % 10 == 0)
    return true if x / 10 == 0
    reverse = 0

    while reverse < x
        reverse *= 10
        reverse += (x % 10)
        x /= 10
    end

    x == reverse || x == reverse / 10
end

is_palindrome 11
