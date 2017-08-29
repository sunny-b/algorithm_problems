# Given an array and a value, remove all instances of that value in place and return the new length.

# Do not allocate extra space for another array, you must do this in place with constant memory.

# The order of elements can be changed. It doesn't matter what you leave beyond the new length.

def remove_element(nums, val)
    left = 0

    (0...nums.length).each do |right|

      if nums[right] != val
        nums[left] = nums[right]
        left += 1
      end

    end

    left
end

remove_element [3, 2, 2, 3], 3
