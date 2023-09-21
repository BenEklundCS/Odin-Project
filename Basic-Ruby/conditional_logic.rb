room_is_tidy = true
homework_is_done = false

# Ruby allows for && || and ! logical operators!
# Ruby also includes the ternary operator ? which functions as a one-line if else

puts (room_is_tidy && homework_is_done) ? "I can play video games!" : "I cannot play video games."

# elsif not else if or elif!

if room_is_tidy == false
    puts "Room is not tidy."
elsif room_is_tidy == true
    puts "Room is tidy!"
else
    puts "Room does not exist?"
end

a = 100
b = 100
puts a.eql?(b) # Checks if values are equal to one another
puts a.equal?(b) # Checks if MEMORY ADDRESS is equal for two vars, this is often true for integers
                 # Due to fun computer optimization
a_string = "Ben"
b_string = "Ben"
puts a_string.eql?(b_string)
puts a_string.equal?(b_string) # Computers cannot make this optimization for strings.

# Spaceship operator

puts 5 <=> 10    #=> -1
puts 10 <=> 10   #=> 0
puts 10 <=> 5    #=> 1


