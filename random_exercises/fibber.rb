#quantity = 15
#
#def fibonacci(q)
#  x = 0
#  y = 1
#  count = 0
#  numbers = []
#
#  q.times do
#    count += 1
#    if count % 5 == 0
#      numbers << x
#    else
#      numbers << x
#    end
#    z = x + y
#    x = y
#    y = z
#    end
#    puts numbers
#  end

#fibonacci(quantity)

# quantity = 15

 #def fibonacci(q)
  #x = 0
  #y = 1
  #numbers = []

  #q.times do
    #numbers << x
    #z = x + y
    #x = y
    #y = z
    #end
    #numbers
    #numbers.each_slice(5) { |x| puts x.join(' ') }
  #end

#fibonacci(quantity)

# numbers = "0 1 1 2 3\n5 8 13 21 34\n55 89 144 233 377"
# puts numbers

# ---------------------

# Jeff's solution:
  # To calculate next number:
  # a. find the number two back
  # b. find the number one back
  # c. add them together
  # d. put the result into the sequence
  # e. to calc next number, go to (a)

quantity = 15

sequence = [0,1]

(quantity-2).times do
two_back = sequence[-2]
one_back = sequence[-1]
newb = two_back + one_back
sequence.push(newb)
end

#set_number = X
#starts_at = set_number*5
#ends_at = starts_at+4

if quantity % 5 == 0
  row_count = quantity / 5 - 1
else
  row_count = quantity / 5
end

sets = []
(0..row_count).each do |set_number|
starts_at = set_number * 5
ends_at = starts_at + 4
sets.push(sequence[starts_at..ends_at])
end

sets.each do |data|
  output = data.join(" ")
  puts output
end
