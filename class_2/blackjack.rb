# I need cards
cards_in_hand = []
cards_in_dealer = []
@gameonplayer = true
@gameondealer = true
@playertotals = 0
@dealertotals = 0

def get_card
	rand(1..11)
end

# def check_win(cards)  # parameters is anything passed inside a function
# 	if cards > 21
# 		@gameon = false
# 		puts "BUST"
# 	elsif cards == 21
# 		@gameon = false
# 		puts "I WIN"
# 	# elsif cards < 21
# 	# 	puts "WHAT ARE YOU DOING?"
# 	end
# end

def check_win_final(playertotals,dealertotals)  # parameters is anything passed inside a function
	
#see if players / dealers bust
	puts playertotals
	puts dealertotals
	if playertotals > dealertotals
		puts "Player Wins"
	elsif dealertotals > 21
		puts "Player Wins"
	elsif playertotals < dealertotals
		puts "House Wins"
	elsif playertotals == dealertotals
		puts "TIE"
	end
end

# Dealer needs to give me two cards
cards_in_hand.push(get_card)
cards_in_hand.push(get_card)

while @gameonplayer == true
	card_values = 0
	puts "Player has the following cards: "
	cards_in_hand.each do |card|
		puts card
		card_values += card
	end
	puts "Player Card values: #{card_values}"
	puts "Do you want to hit or stay (h to hit, s to stay)?"
	hit_or_stay = gets.chomp
	if hit_or_stay == 'h'
		new_card = get_card
		cards_in_hand.push(new_card)
		puts "This is your new card #{new_card}"
		card_values += new_card
		@playertotals = card_values
		puts "Your total is now: #{card_values} "
		if card_values > 21
			puts "Player BUST"
			@gameonplayer = false
			@gameondealer = false
		end
	end

	if hit_or_stay == 's'
	  # check_win_final(@playertotals,@dealertotals)
		@gameonplayer = false
		
	end
	@playertotals = card_values
end

# Dealer needs to deal house cards
cards_in_dealer.push(get_card)
cards_in_dealer.push(get_card)

while @gameondealer == true
	card_values = 0
	puts "Dealer has the following cards: "
	cards_in_dealer.each do |card|
		puts card
		card_values += card
	end
	puts "Dealer Card values: #{card_values}"
	
	# Dealer Hits if cards value is less than 17, if the cards are greater stay
	if card_values < 17
		new_card = get_card
		cards_in_dealer.push(new_card)
		puts "This is your new card #{new_card}"
		card_values += new_card
		@dealertotals = card_values
		puts "Dealer total is now: #{card_values} "
		# @dealertotals = check_win_final(card_values)
	else
		puts "Dealer total is : #{card_values} "
		# @dealertotals = check_win_final(card_values)
		check_win_final(@playertotals,@dealertotals)
		@dealertotals = card_values
		@gameondealer = false
	end
end





# 10 - Hit or stay
# hit
#   I get an additional card
#   check to see if someone wins
#   goto 10
# stay
#   dealer deals himself cards
#   if dealer is < 17
#     he gets more cards
#   check to see if someone wins
# end

