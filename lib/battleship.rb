require_relative "board"
require_relative "player"

class Battleship
  attr_reader :board , :player
  def initialize(length_of_board)
    @player = Player.new
    @board = Board.new(length_of_board)
    @remaining_misses = @board.size/2
  end

  def start_game
    @board.place_random_ships
    @board.place_random_ships
    @board.print
  end

  def lose?
    if @remaining_misses <= 0
      puts "you lose"
      true
    else
      false
    end
  end

end
