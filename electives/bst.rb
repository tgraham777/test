# this is for the INSERT method
# require 'pry' (?)
class Node

  attr_reader :value, :right, :left

  def initialize(input_value)
    @value = input_value
  end

  def insert(newb)
    if newb.value < self.value
      #puts "It goes to the LEFT"
        if left #this means if something exists to the left
          @left.insert(newb)
        else
          @left = newb
        end
      #if left is a node
        #tell left to insert newb
      #else
        #set left to point to newb
    else
      #puts "It goes to the RIGHT"

      if right #attr variables always start as nil so this will check if node exists or not
        @right.insert(newb)
      else
        @right = newb
      end

      #if right is a node
        #tell right to insert newb
      #else
        #set right to point to newb
    end
  end
end

#make a root:
root = Node.new(5)

data = [12, 6, 7, 1, 4, 0, 14]

data.each do |datum|
  newb = Node.new(datum)
  root.insert(newb)
end

# Implement an find(value) like this:

# root.find(7) => true
# root.find(15) => false

def find(input)
  if input.value < #self.value
      #if left #this means if something exists to the left
      #  @left.insert(newb)
      #else
      #  @left = newb
      #end
    #if left is a node
      #tell left to insert newb
    #else
      #set left to point to newb
  #else
    #puts "It goes to the RIGHT"

  #  if right #attr variables always start as nil so this will check if node exists or not
  #    @right.insert(newb)
  #  else
  #    @right = newb
  #  end

    #if right is a node
      #tell right to insert newb
    #else
      #set right to point to newb
  end
end


binding.pry

puts "Done"
