card_number = "4929735477250543"  # this number is the input
puts "Card Number - #{card_number}"
card_number.split("")
Array1 = []

# Put all numbers in array before summing?
# Put number calcs in loop that adds them together

number1a = card_number[-1].to_i
  Array1 << number1a

number1 = card_number[-2].to_i * 2
if number1 > 9
  Array1 << number1 - 9
else
  Array1 << number1
end

number2a = card_number[-3].to_i
  Array1 << number2a

number2 = card_number[-4].to_i * 2
if number2 > 9
  Array1 << number2 - 9
else
  Array1 << number2
end

number3a = card_number[-5].to_i
  Array1 << number3a

number3 = card_number[-6].to_i * 2
if number3 > 9
  Array1 << number3 - 9
else
  Array1 << number3
end

number4a = card_number[-7].to_i
  Array1 << number4a

number4 = card_number[-8].to_i * 2
if number4 > 9
  Array1 << number4 - 9
else
  Array1 << number4
end

number5a = card_number[-9].to_i
  Array1 << number5a

number5 = card_number[-10].to_i * 2
if number5 > 9
  Array1 << number5 - 9
else
  Array1 << number5
end

number6a = card_number[-11].to_i
  Array1 << number6a

number6 = card_number[-12].to_i * 2
if number6 > 9
  Array1 << number6 - 9
else
  Array1 << number6
end

number7a = card_number[-13].to_i
Array1 << number7a

number7 = card_number[-14].to_i * 2
if number7 > 9
  Array1 << number7 - 9
else
  Array1 << number7
end

number8a = card_number[-15].to_i
Array1 << number8a

number8 = card_number[-16].to_i * 2
if number8 > 9
  Array1 << number8 - 9
else
  Array1 << number8
end

puts Array1.reverse

##number_sum = number1 + number1a + number2 + number2a + number3 + number3a + number4 + number4a + number5 + number5a + number6 + number6a + number7 + number7a + number8 + number8a
##puts "Sum is #{number_sum}"

##if number_sum % 10 == 0
  ##puts "Card number is valid"
##else
  ##puts "Card number is invalid!"
##end

# => ["4", "9", "2", "9", "7", "3", "5", "4", "7", "7", "2", "5", "0", "5", "4", "3"]
# after conv.-> ["8", "9", "4", "9", "5", "3", "1", "4", "5", "7", "4", "5", "0", "5", "8", "3"]
#card_number[-2].to_i * 2
  # => 8
#pull to integer and multiply only if position % 2 == 0

# a = -2
# a2 = -2-2 (or should it be a *= a-2?)
#grab numbers from -2 to -length if position % 2 == 0

# then repeat for -4, -6, -8, -10, -12, -14, -16

#card_number[-2]
#convert pulled number to integer
#multiply integer by 2
#if greater than or equal to 10, subtract 9
#sum remaining numbers
#if remaining number sum % 10 == 0 then number is valid, if not it is invalid

# End result should be valid = false or valid = true?, followed by:
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"

# You can pull a character out of a string using my_string[X] where X is a numeric position number
# You can convert a string to an integer by calling .to_i (ex: "4".to_i)
