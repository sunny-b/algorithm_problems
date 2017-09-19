require 'pry'

# def max_sub_array(nums)
#   return nums.first if nums.size == 1
#
#   max1 = find_max nums[0...nums.size - 1]
#   max2 = find_max nums[1..nums.size - 1]
#
#   max2 > max1 ? max2 : max1
# end
#
# def find_max(arr)
#   max = -9999
#   max_arr = nil
#
#   0.upto(arr.size - 1) do |outer|
#     outer.upto(arr.size - 1) do |inner|
#       sub_arr = arr[outer..inner]
#       sum = sub_arr.reduce(:+)
#
#       max = sum if sum > max
#     end
#   end
#
#   return max
# end

# def max_sub_array(nums)
#   find_max nums
# end
#
# def find_max(nums, max_current = nums[0], max_global = nums[0], i = 1)
#   return max_global if i >= nums.length
#
#   max_current = [nums[i], max_current + nums[i]].max
#   max_global = [max_current, max_global].max
#
#   find_max nums, max_current, max_global, i + 1
# end

def max_sub_array(nums)
    dp = [nums.first]

    (1...nums.length).each { |i| dp[i] = [nums[i], dp[i - 1] + nums[i]].max }

    dp.max
end

max_sub_array [-2,1,-3,4,-1,2,1,-5,4]
