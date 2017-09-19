def can_jump(nums)
  can_jump_helper(nums, nums.size - 1, {0 => true})
end

def can_jump_helper(nums, current_index, memo)
  return memo[current_index] if memo[current_index] == false || memo[current_index] == true

  jump = current_index - 1

  while jump >= 0
    unless nums[jump] >= current_index - jump
        memo[jump] = false
        jump -= 1
        next
    end

    if can_jump_helper(nums, jump, memo)
      memo[current_index] = true
      return true
    end

    memo[jump] = false
    jump -= 1
  end

  memo[current_index] = false
end

can_jump [2,3,1,1,4]
