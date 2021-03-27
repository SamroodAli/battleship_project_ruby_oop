class Board
  attr_reader :size

  def initialize(num_of_rows_columns)
    @grid = Array.new(num_of_rows_columns) { Array.new(num_of_rows_columns){:N} }
    @size = num_of_rows_columns*num_of_rows_columns
  end
  
  def [](array)
    @grid[array[0]][array[1]]
  end

  def []=(array,value)
    @grid[array[0]][array[1]] = value
  end

  def num_ships
    @grid.flatten.count(:S)
  end

end
