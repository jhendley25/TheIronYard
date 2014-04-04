# words_array = ["word", "sword", "hello", "world", "cat", "ironyard", "box"]

# # words_array.sample gives a random word as well
# random_number = Random.rand(words_array.length)
# random_word = words_array[random_number]

# total_guesses = case random_word.length
# when 3
# 	8
# when 4
# 	8
# when 5
# 	7
# when 6
# 	7
# when 7
# 	6
# when 8
# 	6
# when 9
# 	5
# end
# alphabet = [*('a'..'z')]

# puts random_word
# puts total_guesses
# puts "Unguessed letters: #{alphabet.join(' ')}"

# guessed_letters = []
# guessed_letter = gets.chomp
# guessed_letters.push(guessed_letter)

# puts "You guessed #{guessed_letter}"
# puts "Guessed Letters: #{guessed_letters.join(" ")}"
# alphabet.delete(guessed_letter)
# puts "Unguessed Letters: #{alphabet.join(' ')}"

# "apple".split("") will be ["a", "p", "p", "l", "e"]

# # created based on the length of the random word
# test = Array.new(random_word.length)
# # [nil, nil, nil, nil, nil]

# ["a", "p", "p", "l", "e"].each_with_index do |letter, index|
# 	if guessed_letter == letter
# 		test[index] = guessed_letter
# 	end
# end

file = File.open("dictionary.txt")
p file.class