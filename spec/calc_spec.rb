require '../src/calc'

describe Digit do
  it "is able to add numbers" do
    digit1 = Digit.new(19)
    digit2 = Digit.new(20)
    expect(digit1.add(digit2)).to eq(39)
  end
end

describe Digit do
  it "is able to subtract numbers" do
    digit1 = Digit.new(10)
    digit2 = Digit.new(5)
    expect(digit1.subtract(digit2)).to eq(5)
  end
end

describe Digit do
  it "is able to multiply numbers" do
    digit1 = Digit.new(10)
    digit2 = Digit.new(15)
    expect(digit1.multiply(digit2)).to eq(150)
  end
end

describe Digit do
  it "can handle zero dividend" do
    digit1 = Digit.new(10)
    digit2 = Digit.new(0)
    expect(digit1.divided_by(digit2)).to eq('The dividend is zero, please give a non-zero input')
  end
end

describe Digit do
  it "can do division for non zero input" do
    digit1 = Digit.new(10)
    digit2 = Digit.new(5)
    expect(digit1.divided_by(digit2)).to eq(2)
  end
end