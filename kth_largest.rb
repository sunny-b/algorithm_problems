def find_kth_largest(nums, k)
    return nums.first if nums.size == 1

    kth_largest = nums.size - k
    pivot_point = nums.size - 1
    pivot = nums[pivot_point]
    read = 0
    write = -1

    while read < pivot_point
        if nums[read] < pivot
            write += 1

            nums[read], nums[write] = nums[write], nums[read]
        end

        read += 1
    end

    write += 1

    nums[write], nums[pivot_point] = pivot, nums[write]

    if write == kth_largest
        nums[write]
    elsif write < kth_largest
        find_kth_largest(nums[write + 1..-1], k)
    else
        find_kth_largest(nums[0...write], write - kth_largest)
    end
end

def quick_sort(nums)
  return nums if nums.size <= 1

  pivot_point = nums.size - 1
  pivot = nums[pivot_point]
  read = 0
  write = -1

  while read < pivot_point
      if nums[read] < pivot
          write += 1

          nums[read], nums[write] = nums[write], nums[read]
      end

      read += 1
  end

  write += 1
  nums[write], nums[pivot_point] = pivot, nums[write]

  quick_sort(nums[0...write]).concat([nums[write]]).concat(quick_sort(nums[write + 1..-1]))
end

quick_sort [3, 1, 2, 4, 0, 7, -2, -1]
