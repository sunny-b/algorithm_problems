# Given an array of integers sorted in ascending order, find the starting and ending position of a given target value.
# Your algorithm's runtime complexity must be in the order of O(log n).
# If the target is not found in the array, return [-1, -1]


def search_range(nums, target)
  lRange = find_range_start(nums, target)
  rRange = find_range_end(nums, target)

  if (lRange >= 0 && rRange >= 0) || (lRange < 0 && rRange < 0)
    [lRange, rRange]
  elsif rRange < 0
    [lRange, lRange]
  else
    [rRange, rRange]
  end
end

def find_range_start(nums, target)
  left = 0
  right = nums.size - 1

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] == target
      return mid if nums[mid - 1] < target
      right = mid
    elsif nums[mid] < target
  	  left = mid
    else
      right = mid
    end
  end

  if nums[left] == target && (left - 1 < 0 || nums[left - 1] < target)
      return left
  elsif nums[right] == target && nums[left] != target
      return right
  end

  -1
end

def find_range_end(nums, target)
  left = 0
  right = nums.size - 1

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] == target
      return mid if nums[mid + 1] > target
      left = mid
    elsif nums[mid] < target
  	  left = mid
    else
      right = mid
    end
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
