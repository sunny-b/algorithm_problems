# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
# You may assume no duplicates in the array.

def search_insert(nums, target)
    if target < nums.first
        return 0
    elsif target > nums.last
        return nums.length
    end

    left = 0
    right = nums.size - 1

    while left + 1 < right
        mid = left + (right - left) / 2

        if nums[mid] == target
            return mid
        elsif nums[mid] < target
            left = mid
        else
            right = mid
        end
    end

    nums[left] == target ? left : right
end

# Time: O(log N)
# Space: O(1)
# leetcode: 60%
