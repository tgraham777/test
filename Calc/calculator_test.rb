require 'minitest/autorun'
require './calculator'

class CalculatorTest < Minitest::Test
  def test_it_adds
    calc = Calculator.new
    result = calc.add(5, 6)
    assert_equal 11, result
  end

  def test_it_adds_with_a_negative
    calc = Calculator.new
    result = calc.add(5, -6)
    assert_equal -1, result
  end

  def test_it_subtracts
    calc = Calculator.new
    result = calc.subtract(10, 6)
    assert_equal 4, result
  end

  def test_it_squares
    calc = Calculator.new
    result = calc.square(10)
    assert_equal 100, result
  end

  def test_it_divides
    calc = Calculator.new
    result = calc.divide(10,2)
    assert_equal 5, result
   # Use the division method
   # Verify the result
  end

  def test_it_multiplies
    calc = Calculator.new
    result = calc.multiply(4,6)
    assert_equal 24, result
   #skip  # replace this with your test
  end

  def test_it_raises_to_a_power
    calc = Calculator.new
    result = calc.power(10,2)
    assert_equal 100, result
   # Create a calc
   # call calc.x_to_y(2, 3)
   # Verify the result is 8
  end

  def test_it_records_the_last_result
    calc = Calculator.new
    result = calc.last_res(2,4)
    assert_equal 6, result
   # Create a calc
   # Use the addition method
   # Call calc.last_result
   # Verify the last_result is correct
  end

  def test_it_clears
   # Create a calc
   # Use the addition method
   # Call calc.last_result
   # Call calc.clear
   # Verify the last_result is 0
  end
end
