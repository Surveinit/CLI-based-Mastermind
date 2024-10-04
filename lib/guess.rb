require_relative 'player'
require_relative 'secret_code'

class Guess
  def correct_color(user_guess, secret_code)
    @user_guess = user_guess
    @secret_code = secret_code
    @correct_color = 0

    @user_guess.each do |user_color|
      @secret_code.each do |secret_color|
        @correct_color += 1 if user_color == secret_color
      end
    end

    @correct_color
  end

  def correct_position(user_guess, secret_code)
    @user_guess = user_guess
    @secret_code = secret_code
    @correct_position = 0

    @user_guess.each do |user_color|
      @secret_code.each do |secret_color|
        next unless user_color == secret_color

        @correct_position += 1 if user_guess.index(user_color) == secret_code.index(secret_color)
      end
    end

    @correct_position
  end
end

# Testing correct_color()
# guess1 = Guess.new
# p guess1.correct_color(["red", "green", "blue"], ["white", "orange", "red"])    #1
# p guess1.correct_color(["red", "green", "blue"], ["white", "orange", "black"])  #0
# p guess1.correct_color(["red", "green", "blue"], ["white", "blue", "red"])      #2

# Testing correct_position()
# guess1 = Guess.new
# p guess1.correct_position(["red", "red", "red"], ["red", "orange", "white"])    #0
# p guess1.correct_position(["red", "green", "blue"], ["red", "orange", "black"])    #1
# p guess1.correct_position(["red", "green", "blue"], ["red", "green", "white"])     #2
