input = [4, 3, 5, 0, 1]

x = 0

swaps = 0

while x < input.length-1
  if input[x] > input[x+1]
    input[x], input[x+1] = input[x+1], input[x]
    swaps += 1
    x = 0
  else
    x += 1
  end
end

result = input

puts "Final result: #{result}"
puts "Swaps: #{swaps}"
