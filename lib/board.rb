require_relative "player"
require_relative "secret_code"

class Board
  def initialize
    @rows = {}
    (1..10).each do |i|
      @rows[i] = { guess: [nil, nil, nil, nil], feedback: { correct_position: 0, correct_colors: 0 }}
    end
  end

  def display_board
    @rows.each do |row, content|
      feedback = content[:feedback]
      puts "Row #{row} Guess: #{content[:guess]} Feedback=> Correct_position: #{feedback[:correct_position]} | Correct_colors: #{feedback[:correct_colors]}" 
    end  
  end

  def add_guess(row, guess, feedback)
    @rows[row][:guess] = guess
    @rows[row][:feedback] = feedback

  end

end


#Testing
board1 = Board.new
board1.display_board
puts ""

# board1.add_guess(1, ["red", "green", "blue"], {correct_position: 1, correct_colors: 0})
board1.add_guess(1, Player.new.user_guess, {correct_position: 1, correct_colors: 0})
board1.display_board