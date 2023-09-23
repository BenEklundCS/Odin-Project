def my_name
    "Ben Eklund"
end

puts my_name

def greet(name = "stranger")
    "Hello, " << name << "!"
end

puts greet(my_name)
puts greet()

def return_squared(number)
    number * number
end

x = return_squared(20) #=> 400
y = 100
sum = x + y #=> 500

puts "The sum of #{x} and #{y} is #{sum}."
#=> The sum of 400 and 100 is 500.

# Method chain!

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"

# include a ? for predicate methods (that return a bool)

puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

# Bang methods

whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"

puts whisper.downcase!
puts whisper

