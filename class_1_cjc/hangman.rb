#Hangman game program.
puts "Welcome to Hangman"

words_array = ["word", "sword", "hello", "world", "cat"]
random_number = Random.rand(words_array.length)
random_word = words_array[random_number]

# words_array.sample gives a random word as well

total_guesses = case random_word.length
when 4
	8
when 5
	7
when 6
	7
when 7
	6
when 8
	6
when 9
	5
end

#Show the alphabet
alphabet = [*('a'..'z')]

puts random_word
puts total_guesses
puts "Unguessed Letters: #{alphabet.join(' ')}"

guessed_letters = []
guessed_letter = gets.chomp
guessed_letters.push(guessed_letter)

puts "You guessed #{guessed_letter}"
puts "Guessed Letters: #{guessed_letters.join(" ")}"

alphabet.delete(guessed_letter)
puts "Unguessed Letters: #{alphabet.join(' ')}"

random_word_split = random_word.split("")
# "apple".split("") will be ["a", "p", "p", "l", "e"]

#created based on the length of the random word
test = Array.new [nil, nil, nil, nil, nil]

random_word_split.each_with_index | do |
["a", "p", "p", "l", "e"}.each_with_index | do |letter, index|
	if guessed_letter == letter
		test[index] = guessed_letter
	end
end


