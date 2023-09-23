def ceasar_cipher(string, shift)
    letters = ('a'..'z').to_a

    string.chars.map do |c|
        if string.include?(c.downcase)
            index = string.index(c)
            new_index = (index + shift) % letters.length
            letters[new_index]
        else
            c
        end
    end.join
end

new_string = ceasar_cipher("hello world", 5)
puts new_string