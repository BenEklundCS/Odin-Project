# Benjamin Eklund
# Odin Project

# Still working on the text wrap condition

def ceasar_cipher(string, shift)
    encrypted_text = ""
    string.each_char do |char|
        encrypted_text << (char.ord + shift).chr
    end
    encrypted_text
end

new_string = ceasar_cipher("hello world", 5)
original_string = ceasar_cipher(new_string, -5)

puts new_string
puts original_string