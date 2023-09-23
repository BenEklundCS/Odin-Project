# A hash is just a dictionary

my_hash = {
    "a random word" => "ahoy", # key value pair assigned with =>
    "Dorothy's math test score" => 94,
    "an array" => [1, 2, 3],
    "an empty hash within a hash" => {}
}

new_hash = Hash.new
puts new_hash

hash = { 9 => "nine", :six => 6 }
puts hash

# Value access

shoes = {
    "summer" => "sandals",
    "winter" => "boots"
  }
  
puts shoes["summer"]   #=> "sandals"

# Accessing a key that doesn't exist returns nil

puts shoes["hiking"]   #=> nil

# Sometimes this is an issue, because we want an error to raise
# This is where .fetch comes in!

#shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"

# Default value if not found!
                        #default
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"

# I can add a new key by calling it and also setting the value

shoes["fall"] = "sneakers"
puts shoes
# Can also adjust existing value

shoes["summer"] = "flip-flops"

# We can delete from a hash, which also returns the value deleted
shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"



# Methods!

# keys and values

books = {
    "Infinite Jest" => "David Foster Wallace",
    "Into the Wild" => "Jon Krakauer"
  }
  
puts books.keys      #=> ["Infinite Jest", "Into the Wild"]
puts books.values    #=> ["David Foster Wallace"

# Merging hashes (hash 2 will win and override for common keys)

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

# Symbols are usually used as hash keys, not strings
# This is for performance reasons! The indices of a hash shouldn't be difficult to do operations on

# 'Rocket' syntax
american_cars = {
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Ram"
}
  # 'Symbols' syntax
  japanese_cars = {
    honda: "Accord", # This special syntax is allowed for symbols!
    toyota: "Corolla",
    nissan: "Altima"
}

puts american_cars[:ford]    #=> "Mustang"
puts japanese_cars[:honda]   #=> "Accord"