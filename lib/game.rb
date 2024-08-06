require_relative "secret_code"
require_relative "player"
require_relative "guess"
require_relative "board"


class Game 
  def initialize
    @wincheck = false
    @board = Board.new
    instructions
  end

def instructions
  puts <<~HEREDOC
    Before Playing Mastermind, keep these things in mind:
    1. Enter your 4 colors guess in a single input with spaces in between.
    2. You have 10 turns to guess the correct code.
    3. The possible colors are: red, green, blue, yellow, white, and black.
    4. Feedback will be provided for each guess:
       - 'Correct position' indicates the number of colors that are correct and in the right position.
       - 'Correct colors' indicates the number of correct colors that are in the wrong position.
    5. No duplicate colors are allowed in a single guess.
    6. Use the feedback to refine your next guess.
    7. The game ends when you either guess the correct code or use all 10 turns.
    8. Have fun and good luck!

    If you are ready, Just smash that ENTER key!
  HEREDOC
  
  gets
end

  def play
    (1..10).each do |row|
      p @secret_code = SecretCode.new.code

      puts "Enter your guesses Mister!"
      @user_guess = Player.new.user_guess
      # Feedback
      @correct_color = Guess.new.correct_color(@user_guess, @secret_code)
      @correct_position = Guess.new.correct_position(@user_guess, @secret_code)

      # Add info on board
      @board.add_guess(row, @user_guess, {correct_position: @correct_position, correct_colors: @correct_color})

      # Display board
      puts "~"*80
      @board.display_board
      puts "~"*80

      # Win check
      if @correct_position == 4
        puts "YOU WON in #{row} guess."
        return @wincheck = true
      end

    end
    puts "YOU LOSE"
  end
end


# Testing
game = Game.new
game.play