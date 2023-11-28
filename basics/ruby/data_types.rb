# methods on numbers
puts 10.to_f
puts 1.5.to_i

puts 6.even?
puts 7.even?
puts 5.odd?

# Concat

# With the plus operator:
puts "Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
puts "Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
puts "Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"

# String access

puts "hello"[0]      #=> "h"

puts "hello"[0..1]   #=> "he"

puts "hello"[0, 4]   #=> "hell"

puts "hello"[-1]     #=> "o"

# Escape

# \\  #=> Need a backslash in your string?
# \b  #=> Backspace
# \r  #=> Carriage return, for those of you that love typewriters
# \n  #=> Newline. You'll likely use this one the most.
# \s  #=> Space
# \t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark

# Interpolation

name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"

# String methods

"hello".capitalize #=> "Hello"

#include?

"hello".include?("lo")  #=> true

"hello".include?("z")   #=> false

#upcase

"hello".upcase  #=> "HELLO"

#downcase

"Hello".downcase  #=> "hello"

#empty?

"hello".empty?  #=> false

"".empty?       #=> true

#length

"hello".length  #=> 5

#reverse

"hello".reverse  #=> "olleh"

#split

"hello world".split  #=> ["hello", "world"]

"hello".split("")    #=> ["h", "e", "l", "l", "o"]

#strip

"hello, world   ".strip  #=> "hello, world"

"he77o".sub("7", "l")           #=> "hel7o"

"he77o".gsub("7", "l")          #=> "hello"

"hello".insert(-1, " dude")     #=> "hello dude"

"hello world".delete("l")       #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"

# Converting strings

5.to_s        #=> "5"

nil.to_s      #=> ""

:symbol.to_s  #=> "symbol"

# Symbols #

"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true

# Booleans

true
false
nil
