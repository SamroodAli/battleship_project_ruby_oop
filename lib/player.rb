class Player
  
  def get_move
    puts should print "enter a position with coordinates separated with a space like `4 7`"
    input = gets.chomp
    array = input.split.map(&:to_i)
  end

end
