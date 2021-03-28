require_relative "board"
require_relative "player"

class Battleship
  def initialize(length_of_board)
    @player = Player.new
    @board = Board.new(length_of_board)
    @remaining_misses = @board.size/2
  end
end
