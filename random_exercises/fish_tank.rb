#Classes (prototypes)

# Fish (incl. different types of fish)
# Tank
# Fake tree

class Fish
  # attributes color, name, energy_level
  # methods swim, eat, poop, respirate
  attr_reader(:color, :energy_level)
  attr_accessor(:name)

  def initialize(my_color)
    @color = my_color
  end

  #def swim
    #puts "I'm swimming"
  #end

  #def eat(food)
    #puts "I'm eating the #{food}"
  #end

  #def poop
  #  puts "Poopin"
  #end

  #def breathe_water
  #  puts "Breathing"
  #end

  def tell_your_name
    puts "Hi, i'm #{name} the #{color} fish"
  end
end

#class GoldFish
  # attributes color, name, energy_level
  # methods swim, eat, poop, respirate
#end

#class Tank
  # attributes height, width, depth, volume, glass_color
  # methods ???
#end

#class FakeTree
  # attributes color, height, # of branches
  # methods ???
#end

#Instances (nouns)

# Fish: Bob
# Fish: Nemo
# Fish: Goldie
# Tank: little tank (if only one instance of form common for it to have the same name as the class)
# Tank: shark tank
# FakeTree: fake_tree_1, fake_tree_2, fake_tree_3

bob = Fish.new("green")
bob.name = "Bob"
# bob.color = "green"
bob.tell_your_name

nemo = Fish.new("orange")
nemo.name = "Little Nemo"
# nemo.color = "orange"
nemo.tell_your_name

#goldie = Fish.new

#class Tank
  #attr_reader :occupants

  #def initialize
  #  @occupants << newbie
  #end


  #def add_fish(newbie)

  #end
