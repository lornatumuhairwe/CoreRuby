require_relative "calculator"
require "minitest/autorun"

class CalculatorTest < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add_two_numbers
    assert_equal 4, @calculator.add(2, 2)
  end
end

describe Calculator do
  before do
    @calculator = Calculator.new
  end

  it "returns the sum of the two numbers" do
    @calculator.add(3, 5).must_equal(8)
  end
end