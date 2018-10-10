require './src/calc'

class Digit
  include Calculator
  attr_accessor :value
	@value = 0

  def initialize(input)
    @value = input
  end
end