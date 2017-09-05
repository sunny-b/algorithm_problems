def my_sqrt(x)
    left = 0
    right = x

    while left + 1 < right
        mid = left + (right - left) / 2
        
        if mid**2 == x
          return mid
        elsif mid**2 > x
          right = mid
        else
          left = mid
        end
    end

    right ** 2 <= x ? right : left
end

my_sqrt 6
