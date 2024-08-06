class Player
  attr_reader :guess
  def user_guess
    @guess = gets.chomp.split(" ").uniq
  end
end


# Testing
# guess1 = Player.new
# p guess1.user_guess