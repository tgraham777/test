#Encryptor:
array_1 = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
array_2 = ["n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]

message = "This is my secret"

new_array = message.downcase.split(//)
new_array1 = new_array - [" "]

new_array2 = new_array1.map {|letter| array_1.index(letter)}

new_array3 = new_array2.map {|letter2| array_2[letter2]}

new_array3.join("")

#Decryptor

new_string1 = new_array3.join

new_array4 = new_string1.downcase.split(//)

new_array5 = new_array4.map {|letter3| array_1.index(letter3)}

new_array6 = new_array5.map {|letter4| array_2[letter4]}

new_array6.join("")

#key = 13

#q.times do --> push to new array1
#q.times do --> push to new array2
#q.times do --> push to new array3

#q = new_array1.length

#array_1.index[r]

#my_count = 0

#q.times do
#  new_array1[my_count]
  #new_array2.push
#  array_1.index(new_array1[my_count])
#  my_count += 1
#end


# .each do |x|
