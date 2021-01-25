class GameOfLife
  def initialize(rows, cols)
    @rows = rows
    @cols = cols

    @grid = Array.new(rows+1, Array.new(cols+1, false))
    @grid_mirror = Array.new(rows+1, Array.new(cols+1, false))
  end

  def get(row, col)
    return @grid[row][col]
  end

  def set(row, col)
    @grid[row][col] = true
  end

  def next
    @grid = Array.new(@rows+1, Array.new(@cols+1, false))
  end
  
end
