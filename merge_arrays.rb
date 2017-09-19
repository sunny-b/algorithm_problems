def merge(nums1, m, nums2, n)
    return nums1 if n.zero?
    return nums2 if m.zero?

    nums1.each_with_index do |num, i|
        if num < nums2[0]
            temp = nums2[0]
            nums2[0] = num
            nums1[i] = temp
        end

        bubble_sort(nums2)
    end

    nums1.concat(nums2)
end

def bubble_sort(nums)
    idx = 0

    while idx < nums.size - 1
        break if nums[idx] < nums[idx + 1]

        temp = nums[idx + 1]
        nums[idx + 1] = nums[idx]
        nums[idx] = temp
    end
end

merge [0], 0, [1], 1
