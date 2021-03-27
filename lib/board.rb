class Board
  def initialize(num_of_rows_columns)
    @grid = Array.new(num_of_rows_columns) { Array.new(num_of_rows_columns){:N} }
    @size = num_of_rows_columns*num_of_rows_columns
  end
  
end
