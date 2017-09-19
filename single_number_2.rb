def single_number(nums)
   mask = 1
    ret = 0
    32.times do
        count = 0
        nums.each do |num|
            if (mask & num) != 0
              count += 1
            end
        end

        if count == 1 || (count.even? && !count.zero?)
          ret |= mask
        end
        mask <<= 1
    end

    ret
end

single_number([1])
