class SecretCode
  attr_reader :code

  def initialize
    @colors = %w[red green blue yellow white black]
    @code = @colors.sample(4)
  end
end

# Testing
# code = SecretCode.new.code

