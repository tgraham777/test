#Horace's solution:

class BubbleSort
  #when hit no swaps sort is complete

  def sort(numbers)
    swapped = true
    while swapped do
      swapped = false
      numbers.each_with_index do |num, index|
        neighbor_index = index + 1
        neighbor = numbers[neighbor_index]

        if !neighbor.nil? && num > neighbor
          swapped = true
          swap(numbers, index, neighbor_index)
        end
      end
    end
      numbers
  end

  def swap(numbers, index1, index2)
    v1 = numbers[index1]
    v2 = numbers[index2]

    numbers[index2] = v1
    numbers[index1] = v2

    numbers
  end


end


#My solution:
#input = [4, 3, 5, 0, 1]

#x = 0

#swaps = 0

#while x < input.length-1
#  if input[x] > input[x+1]
#    input[x], input[x+1] = input[x+1], input[x]
#    swaps += 1
#    x = 0
#  else
#    x += 1
#  end
#end

#result = input

#puts "Final result: #{result}"
#puts "Swaps: #{swaps}"
