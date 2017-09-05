# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
    map = {}
    stack = []

    nums.each do |num|
        map[stack.pop] = num while !stack.empty? && stack.last < num
        stack << num
    end

    find_nums.map { |num| map[num] || -1 }
end
