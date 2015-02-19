#input = fixnum
class CreditCheck

  # take in integer, give back array of integers
  # 12345 -> [1,2,3,4,5]
  def split_number(number)
    number1 = number.to_s.chars
    number2 = number1.map do |x|
      x.to_i
    end
  end

  # take in array of ints; give back array of integers with
  # every other doubled
  # [1,2,3,4] -> [2,2,6,4]
  def double_every_other_digit(array1)
    array2 = array1.reverse
    #[4,3,2,1]
    array2.each_with_index.map do |n, index|
      if (index+1) % 2 == 0
        n * 2
      else
        n
      end
    end.reverse
    #array2.reverse

  end

  def condense_over_9(array)
    array.map do |i|
      if i > 9
        i - 9
      else
        i
      end
    end
  end

  def sum_the_digits(array)
    array.reduce(0) do |sum, item|
      sum + item
    end
  end

  def divisible_by_ten?(input)
    if input % 10 == 0
      true
    else
      false
    end
  end

  def whole_thing(card_number)
    split = split_number(card_number)
    doubled = double_every_other_digit(split)
    condensed = condense_over_9(doubled)
    sums = sum_the_digits(condensed)
    divisible = divisible_by_ten?(sums)
    if divisible == true
       "Valid"
    else
       "Invalid!"
    end
  end
end
