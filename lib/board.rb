class Board
  attr_reader :size

  def initialize(num_of_rows_columns)
    @num_of_rows_columns = num_of_rows_columns
    @grid = Array.new(num_of_rows_columns) { Array.new(num_of_rows_columns){:N} }
    @size = num_of_rows_columns*num_of_rows_columns
  end
  
  def self.print_grid(grid)
    output = ""
    grid.each_with_index do |row|
      row.each do |cell|
        print cell
        print " " unless cell == row.last
      end
      print "\n"
    end
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

  def is_ship?(pos)
    self[pos] == :S
  end

  def attack(pos)
    if self[pos] == :S
      self[pos] = :H
      puts "you sunk my battleship!"
      true
    else
      self[pos] = :X
      false
    end
  end

  def place_random_ships
    quarter =  @size/4
    while num_ships < quarter
      random1 = rand(@num_of_rows_columns)
      random2=  rand(@num_of_rows_columns)
      pos = [random1,random2]
      self[pos] = :S
    end
  end



end
