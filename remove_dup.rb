# Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this in place with constant memory.

def remove_duplicates(nums)
    # return original array if empty or only 1 item
    return nums.length if nums.length < 2

    # this is a count that will keep track of the new length.
    length = 1

    # iterate from 1 to array length - 1
    (1...nums.length).each do |idx|
      # if current value doesn't equal previous value,
      # set item at 'length' index to the current 'idx' index
      # and then increment new length counter
      if nums[idx] != nums[idx-1]
        nums[length] = nums[idx]
        length += 1
      end
    end

    # chop off the end of the array past new length
    # if nums = [1, 2, 2], it now becomes [1, 2]
    nums.slice!(0, length)

    # return new length
    length
end

remove_duplicates [1, 1, 2]
