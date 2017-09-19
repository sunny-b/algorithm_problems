# Shorten array on each recursive call
def subsets_1(nums, results = [], solution = [])
    results << solution.clone
    return if nums.empty?

    nums.each_with_index do |num, i|
        solution << num
        subsets(nums[i + 1..-1], results, solution)
        solution.pop
    end

    results
end

# Use a 'current_idx' to keep track of where we are in array
def subsets_2(nums, results = [], solution = [], current_idx = 0)
    results << solution.clone
    return if current_idx >= nums.length

    current_idx.upto(nums.length - 1) do |i|
        solution << nums[i]
        subsets(nums, results, solution, i + 1)
        solution.pop
    end

    results
end

# Different version of 'current_idx' that shortens array instead of using
# 'upto' method. This one is the fastest.
def subsets_3(nums, results = [], solution = [], current_idx = 0)
    results << solution.clone
    return if current_idx == nums.length

    nums[current_idx..-1].each_with_index  do |num, i|
        solution << num
        subsets(nums, results, solution, current_idx + i + 1)
        solution.pop
    end

    results
end
