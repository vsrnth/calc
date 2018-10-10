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
