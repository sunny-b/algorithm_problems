def length_of_lis(nums)
    dp = [1] * nums.size

    (1...nums.size).each do |i|
        (0...i).each do |j|
            dp[i] = dp[j] + 1 if (nums[j] < nums[i] && dp[i] < dp[j] + 1)
        end
    end

    dp.max
end

length_of_lis [10,9,2,5,3,7,101,18]
