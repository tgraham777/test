class Calculator

  def add(num1, num2)
    num1 + num2
  end


  def subtract(num1, num2)
    num1 - num2
  end


  def square(num1)
    num1 * num1
  end

  def divide(num1, num2)
    num1 / num2
  end

  def multiply(num1, num2)
    num1 * num2
  end

  def power(num1, num2)
    num1 ** num2
  end

  def last_res(num1, num2)
    last_result
  end

  def clears(num1, num2)
    num1 + num2
    clears.delete
  end
end
