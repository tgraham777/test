#Test check digit numbers:
#2, 6 = valid
#3, 1 = invalid

#break the string up (string --> string)
#identify each number's position in the string (string --> integer)
#convert to integers (string --> integer)
#multiply * 2 every other number starting from second to last (integer --> integer)
#if number > 9 then subtract 9 (integer --> integer)
#add all numbers together (integers --> integer)
#sum % 10 == 0 --> valid (integer --> string)
#sum % 10 != 0 --> invalid (integer --> string)

require "minitest"
require "minitest/autorun"
require_relative "credit_check_2"
#require_relative calls the current/related directory so
#that ./ does not have to be added to the file path name


class CreditCheckTest < Minitest::Test
  def test_it_can_break_number_into_inidividual_digits
    # 12345 --> "1", "2", "3", "4", "5"
    credit_check = CreditCheck.new
    assert_equal [1, 2, 3, 4, 5], credit_check.split_number(12345)
  end

  def test_it_can_double_every_other_digit
    # [1,2,3,4] --> [2,2,6,4]
    credit_check = CreditCheck.new
    assert_equal [2, 2, 6, 4], credit_check.double_every_other_digit([1,2,3,4])
  end

  def test_condense_numbers_over_9
    credit_check = CreditCheck.new
    assert_equal [6,3,1,4], credit_check.condense_over_9([6,12,10,4])
  end

  def test_sums_the_digits
    credit_check = CreditCheck.new
    assert_equal 10, credit_check.sum_the_digits([1,2,3,4])
  end

  def test_check_sum_divisible_by_10
    credit_check = CreditCheck.new
    assert_equal true, credit_check.divisible_by_ten?(100)
  end

  def test_the_whole_enchilada
    credit_check = CreditCheck.new
    assert_equal "Invalid!", credit_check.whole_thing(6011797668867823)
  end
end
