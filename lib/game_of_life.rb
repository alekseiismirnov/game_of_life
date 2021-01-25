class GameOfLife
  def initialize(rows, cols)
    @rows = rows
    @cols = cols

    @grid = Array.new(rows, Array.new(cols, false))
  end

  def get(row, col)
    return @grid[row][col]
  end

  def set(row, col)
    @grid[row][col] = true
  end
end
