# Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

def three_sum(nums)
    nums.sort!
    three_sums = []

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
                three_sums << [nums[i], nums[l], nums[r]]
                l += 1 while l < r && nums[l] == nums[l + 1]
                r -= 1 while l < r && nums[r] == nums[r - 1]
                l += 1; r -= 1
            end
        end
    end

    three_sums
end

three_sum [-1, -1, 0, 1]
