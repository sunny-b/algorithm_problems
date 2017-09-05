def three_sum_closest(nums, target)
    nums.sort!
    closest = Float::INFINITY

    0.upto(nums.size - 2) do |i|
        next if i > 0 && nums[i] == nums[i - 1]

        l = i + 1
        r = nums.size - 1

        while l < r
            s = nums[i] + nums[l] + nums[r]
            if s < 0
                l += 1
            elsif s > 0
                r -= 1
            else
                sum = nums[i] + nums[l] + nums[r]
                closest = sum if (target - sum).abs < closest
                l += 1 while l < r && nums[l] == nums[l + 1]
                r -= 1 while l < r && nums[r] == nums[r - 1]
                l += 1; r -= 1
            end
        end
    end

    closest
end

three_sum_closest [0, 1, 2], 3
