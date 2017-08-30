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

  if nums[left] == target
    left
  elsif nums[right] == target
    right
  else
    -1
  end
end

def find_range_end(nums, target)
  left = 0
  right = nums.size - 1

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] > target
      right = mid
    else
      left = mid
    end
  end

  nums[right] == target ? right : left
end

search_range [0, 1, 2, 3, 4, 8, 8, 8, 8, 8, 9, 10], 5

# time: O(log N)
# space: O(1)
# leetcode: 79%
