card_number = "4929735477250543"  # this number is the input
puts "Card Number - #{card_number}"
card_number.split("")

# Array1 = []?
# Put all numbers in array before summing?
# Put number calcs in loop that adds them together

number1a = card_number[-1].to_i
  puts number1a

number1 = card_number[-2].to_i * 2
if number1 > 9
  puts number1 - 9
else
  puts number1
end

number2a = card_number[-3].to_i
puts number2a

number2 = card_number[-4].to_i * 2
if number2 > 9
  puts number2 - 9
else
  puts number2
end

number3a = card_number[-5].to_i
puts number3a

number3 = card_number[-6].to_i * 2
if number3 > 9
  puts number3 - 9
else
  puts number3
end

number4a = card_number[-7].to_i
puts number4a

number4 = card_number[-8].to_i * 2
if number4 > 9
  puts number4 - 9
else
  puts number4
end

number5a = card_number[-9].to_i
puts number5a

number5 = card_number[-10].to_i * 2
if number5 > 9
  puts number5 - 9
else
  puts number5
end

number6a = card_number[-11].to_i
puts number6a

number6 = card_number[-12].to_i * 2
if number6 > 9
  puts number6 - 9
else
  puts number6
end

number7a = card_number[-13].to_i
puts number7a

number7 = card_number[-14].to_i * 2
if number7 > 9
  puts number7 - 9
else
  puts number7
end

number8a = card_number[-15].to_i
puts number8a

number8 = card_number[-16].to_i * 2
if number8 > 9
  puts number8 - 9
else
  puts number8
end

number_sum = number1 + number1a + number2 + number2a + number3 + number3a + number4 + number4a + number5 + number5a + number6 + number6a + number7 + number7a + number8 + number8a
puts "Sum is #{number_sum}"

if number_sum % 10 == 0
  puts "Card number is valid"
else
  puts "Card number is invalid!"
end
