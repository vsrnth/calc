
#Task #1
# Create a calculator class
#  - WHich can do multiplication, addition, subtraction, division
#  - Write Rspec tests for everything
#  - When commit is made to Git travis should run tests.
#  - Trigger travis CI Tests when PR opens



# Task #2
# Write a Rails API which I will send a Hi email to my personal mail
# - Gitlab account
# - Deploy on Heroku
# - Use SendGrid API to send mail

# Task #3
# post commit hooks to push code once committed
# pre commit hooks to run test

# Task #4
# Cleanup the blog

module Calculator
  def add(obj2)
    self.value + obj2.value
  end

  def subtract(obj2)
    self.value - obj2.value
  end

  def multiply(obj2)
    self.value * obj2.value
  end

  def divided_by(obj2)
    unless obj2.value.zero?
      self.value / obj2.value
    else
      "The dividend is zero, please give a non-zero input"
    end 
  end
end


class Digit 
  include Calculator
  attr_accessor :value
	@value = 0

  def initialize(input)
    @value = input
  end
end