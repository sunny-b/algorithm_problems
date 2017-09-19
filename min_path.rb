def min_path_sum(grid)
    rows = grid.size
    cols = grid[0].size
    mins = []
    rows.times { mins << []}

    (0...rows).each do |row|
        (0...cols).each do |col|
            if row == 0 && col == 0
              mins[row][col] = grid[row][col]
              next
            end

            above = (row - 1) < 0 ? Float::INFINITY : mins[row - 1][col]
            left = (col - 1) < 0 ? Float::INFINITY : mins[row][col - 1]

            mins[row][col] = grid[row][col] + [above, left].min
        end
    end

    mins[rows - 1][cols - 1]
end

min_path_sum [[1,2],[1,1]]
