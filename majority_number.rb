def majority_element(nums)
    mask = 1
    ret = 0
    64.times do
        count = 0
        nums.each do |num|
            if (mask & num) != 0
              count += 1
            end
        end

        if (count > (nums.size / 2))
          ret |= mask
        end
        mask <<= 1
    end

    ret
end

Category.find(1).articles

majority_element([1])

SELECT articles.* FROM categories
  INNER JOIN articles
    ON categories.id = articles.category_id
WHERE categories.id = 1;
