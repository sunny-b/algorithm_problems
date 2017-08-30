# Given a positive integer num, write a function which returns True if num is a perfect square else False.

def is_perfect_square(num)
    left = 1
    right = num

    while left + 1 < right do
        mid = left + (right - left) / 2
        square = mid * mid

        if square == num
            return true
        elsif square > num
            right = mid
        else
            left = mid
        end
    end

    return true if left * left == num || right * right == num
    false
end


# Time: O(log N)
# Space: O(1)
# Leetcode: 100%
