def unique_paths(m, n)
    grid = []
    m.times { grid << [] }

    (0...m).each do |row|
        (0...n).each do |col|
            if row == 0 || col == 0
                grid[row][col] = 1
                next
            end

            grid[row][col] = grid[row][col - 1] + grid[row - 1][col]
        end
    end

    grid[m - 1][n - 1]
end

unique_paths 3, 3
