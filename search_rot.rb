# def search(nums, target)
#     left = 0
#     right = nums.size - 1
#
#     while left + 1 < right do
#         mid = left + (right - left) / 2
#
#         return mid if nums[mid] == target
#
#         if nums[left] <= nums[mid]
#           if target >= nums[left] && target < nums[mid]
#             right = mid
#           else
#             left = mid
#           end
#         else
#           if target > nums[mid] && target <= nums[right]
#             left = mid
#           else
#             right = mid
#           end
#         end
#     end
#
#     if nums[left] == target
#       left
#     elsif nums[right] == target
#       right
#     else
#       -1
#     end
# end

def search(nums, target)
    left = 0
    right = nums.size - 1

    while left + 1 < right do
        mid = left + (right - left) / 2

        if nums[mid] == target
            return mid
        elsif nums[mid] > nums[right]
            left = mid
        else
            right = mid
        end
    end

    rot = nums[right] > nums[left] ? left : right
    left = 0
    right = nums.size - 1

    while left <= right do
        mid = left + (right - left) / 2
        real_mid = (mid + rot) % nums.size

        if nums[real_mid] == target
            return real_mid
        elsif nums[real_mid] < target
            left = mid + 1
        else
            right = mid - 1
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

search [1, 3, 5], 1
