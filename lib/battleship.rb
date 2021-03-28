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
    @board.print
    puts "number of ships: #{@board.num_ships}"
  end

  def lose?
    if @remaining_misses <= 0
      puts "you lose"
      true
    else
      false
    end
  end

  def win?
    if @board.num_ships <= 0
      puts "you win"
      true
    else
      false
    end
  end

  def game_over?
    win? || lose?
  end

  def turn
    pos = @player.get_move
    @remaining_misses -=1 unless @board.attack(pos)
    @board.print
    puts "remaining guess: #{@remaining_misses}"
  end

end
