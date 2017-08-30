def search_range(nums, target)
  lRange = find_range_start(nums, target)
  return [-1, -1] if lRange < 0
  rRange = find_range_end(nums, target)

  [lRange, rRange]
end

def find_range_start(nums, target, left = 0, right = nums.size - 1)
  unless left + 1 < right
    index = if nums[left] == target
      left
    elsif nums[right] == target
      right
    else
      -1
    end

    return index
  end

  mid = left + (right - left) / 2

  if nums[mid] < target
    left = mid
  else
    right = mid
  end

  find_range_start(nums, target, left, right)
end

def find_range_end(nums, target, left = 0, right = nums.size - 1)
  unless left + 1 < right
    return nums[right] == target ? right : left
  end

  mid = left + (right - left) / 2

  if nums[mid] > target
    right = mid
  else
    left = mid
  end

  find_range_end(nums, target, left, right)
end

search_range [0, 1, 2, 3, 4, 8, 8, 8, 8, 8, 9, 10], 8
