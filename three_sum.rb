# Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

def three_sum(nums)
    three_sums_seen = {}
    three_sums = []

    nums.length.times do
        comparator = nums.shift

        two_sum_vals = two_sum(nums, 0 - comparator)

        if two_sum_vals
            three_sum = [comparator].concat(two_sum_vals).sort
            three_sums << three_sum unless three_sums_seen[three_sum]

            three_sums_seen[three_sum] ||= true
        end

        nums << comparator
    end

    three_sums
end

def two_sum(nums, target)
  seen = {}
  nums.each_with_index do |num, idx|
    return [num, seen[num]] if seen[num]

    seen[target - num] = num
  end

  false
end
