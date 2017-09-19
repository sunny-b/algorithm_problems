def min_sub_array_len(s, nums)
    anchor = runner = sum = 0
    length = Float::INFINITY

    while runner < nums.length
        sum += nums[runner]
        runner += 1

        while sum >= s
          length = [runner - anchor, length].min
          sum -= nums[anchor]
          anchor += 1
        end
    end

    length == Float::INFINITY ? 0 : length
end

min_sub_array_len 4, [1, 4, 4]
