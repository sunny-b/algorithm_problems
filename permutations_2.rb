def permute_unique(nums, results = [], solution = [])
    if nums.empty?
        results << solution.clone
        return
    end

    seen = {}

    nums.size.times do
        num = nums.shift

        if seen[num]
          nums << num
          next
        end

        seen[num] = true
        permute_unique(nums, results, solution + [num])
        nums << num
    end

    results
end

permute_unique [1, 1, 2]
