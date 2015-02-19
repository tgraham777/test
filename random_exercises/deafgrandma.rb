ready_to_quit = false
puts "HEY KID!"
first_bye = false

until ready_to_quit
input = gets
  if input.chomp == "GOODBYE" && first_bye == false
    puts "LEAVING SO SOON?"
    first_bye = true
  elsif input.chomp == "GOODBYE" && first_bye == true
    puts "LATER, SKATER!"
    ready_to_quit = true
  elsif input.chomp.empty?
    puts "WHAT?!"
  elsif input == input.upcase
    puts "NO, NOT SINCE 1946!"
  elsif input != input.upcase
    puts "SPEAK UP, KID!"
  end
end

# Horace's solution

# def shouted?(string)
#   string == string.upcase
# end

# def saying_goodbye?(string)
#   string == "Goodbye"
# end

# def said_nothing?(string)
#   string.empty?
# end
