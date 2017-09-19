def minimum_total(triangle)
    min_sums = []
    triangle.size.times { min_sums << [] }
    min_sums[0][0] = triangle[0][0]

    (1...triangle.size).each do |row|
        (0...triangle[row].size).each do |col|
            value = triangle[row][col]
            left = (col - 1) < 0 ? Float::INFINITY : min_sums[row - 1][col - 1]
            right = (col + 1) >= triangle[row].size ? Float::INFINITY : min_sums[row - 1][col]

            min_sums[row][col] = value + [left, right].min
        end
    end

    min_sums.last.min
end

minimum_total([[1], [2, 3]])
