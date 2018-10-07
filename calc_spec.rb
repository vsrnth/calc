require './calc'

describe Digit do
  it "is able to add numbers" do
    digit1 = Digit.new(19)
    digit2 = Digit.new(20)
    result = digit1.value + digit2.value
    expect(digit1.add(digit2)).to eq (result)
  end

  it "is able to subtract numbers" do
    digit1 = Digit.new(10)
    digit2 = Digit.new(5)
    result = digit1.value - digit2.value
    expect(digit1.subtract(digit2)).to eq (result)
  end

  it "is able to multiply numbers" do
    digit1 = Digit.new(10)
    digit2 = Digit.new(15)
    result = digit1.value * digit2.value
    expect(digit1.multiply(digit2)).to eq (result)
  end

  it "can handle zero dividend" do
    digit1 = Digit.new(10)
    digit2 = Digit.new(0)  
    expect(digit1.divided_by(digit2)).to eq ("The dividend is zero, please give a non-zero input")
  end

  it "can do division for non zero input" do
    digit1 = Digit.new(10)
    digit2 = Digit.new(5)  
    result = digit1.value/digit2.value
    expect(digit1.divided_by(digit2)).to eq (result)
  end
end