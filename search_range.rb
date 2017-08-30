# Given an array of integers sorted in ascending order, find the starting and ending position of a given target value.
# Your algorithm's runtime complexity must be in the order of O(log n).
# If the target is not found in the array, return [-1, -1]


def search_range(nums, target)
  lRange = find_range_start(nums, target)
  return [-1, -1] if lRange < 0
  rRange = find_range_end(nums, target)

  [lRange, rRange]
end

def find_range_start(nums, target)
  left = 0
  right = nums.size - 1

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] < target
      left = mid
    else
      right = mid
    end
  end

  if nums[left] != target
      return -1
  end

  left
end

def find_range_end(nums, target)
  left = 0
  right = nums.size - 1

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] > target
  end

  if nums[left] == target && nums[right] != target
      return left
  elsif nums[right] == target && nums[right + 1] != target
      return right
  end

  -1
end

# time: O(log N)
# space: O(1)
# leetcode: 73%
