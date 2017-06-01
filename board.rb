class Board
  attr_reader :bombs, :grid

  def initialize
    @grid = Array.new(9) { Array.new(9) { [] } }
    @bombs = []
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, mark)
    x, y = pos
    grid[x][y] = mark
  end

  def populate

    until @bombs.size == 10
      bomb = all_positions.sample
      @bombs << bomb unless @bombs.include?(bomb)
    end
    
  end

  def all_positions
    result = []
    (0..grid.size - 1).each do |row|
      (0..grid.size - 1).each do |col|
        result << [row, col]
      end
    end
    result
  end

end
