#Other peoples' solutions:
#Method one
sequence = [4, 3, 5, 1, 7, 0, 9]
swaps = 0

sequence.length.times do
    (sequence.length - 1).times do |i|
      if sequence[i] > sequence[i + 1]
        sequence[i], sequence[i + 1] = sequence[i + 1], sequence[i]
        swaps += 1
      end
    end
end

result = sequence

puts "Final result: #{result}"
puts "Swaps: #{swaps}"

#Method two
def bubble_sort

  sequence = [4, 3, 5, 0, 1]

  print "#{sequence}\n"
  puts "Running sequence"


  index = 1

  while index < sequence.length
    previous = sequence[index - 1]
    current = sequence[index]

    if previous > current
      sequence[index] = previous
      sequence[index - 1] = current
      index = 1
      print "#{sequence}\n"
    else
      index += 1
    end
  end
end

bubble_sort
