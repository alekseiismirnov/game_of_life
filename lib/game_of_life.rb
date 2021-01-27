class GameOfLife
  def initialize(rows, cols)
    @rows = rows
    @cols = cols

    # we have false margin values, never changed
    @grid = Array.new(rows+2, Array.new(cols+2, false))
    @grid_mirror = Array.new(rows+2, Array.new(cols+2, false)) # no need to init
  end

  def get(row, col)
    return @grid[row][col]
  end

  def set(row, col)
    @grid[row][col] = true
  end

  private def neigbour_cells(row, cell)
    return [[row-1, cell-1], [row-1, cell], [row-1, cell],
            [row,   cell-1],                [row,   cell+1],
            [row+1, cell-1], [row+1, cell], [row+1, cell+1]]
  end

  def next
    (1..@rows).each do |row|
      (1..@cols).each do |col|
        density = neigbour_cells(row, col)
          .map {|r,c| @grid[r][c] ? 1:0 }
          .sum

        case density
        when 0..1 
          @grid_mirror[row][col] = false
        when 2
          @grid_mirror[row][col] = @grid[row][col]
        when 3 
          @grid_mirror[row][col] = true
        else 
          @grid_mirror[row][col] = false
        end

        @grid, @grid_mirror = @grid_mirror, @grid
      end
    end
  end
end
