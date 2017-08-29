# Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this in place with constant memory.

def remove_duplicates(nums)
    left = 0
    right = 1

    while (right < nums.length) do
        nums[left] == nums[right] ? (nums[right] = nil) : (left = right)

        right += 1
    end

    nums.compact!
    nums.length
end

remove_duplicates [1, 1, 2]
