puts "Welcome to Tic Tac Toe!"
game_on = true
#player1 = gets
#puts "Player 1 says: "
#puts player1.chomp.inspect
@game_board = [ [0,0,0], [0,0,0], [0,0,0]]

def display_board
	puts ' #{ display_player(@game_board[0][0])} | #{ display_player(@game_board[0][1])} | #{ display_player(@game_board[0][2])}   '
	puts '-------------'
	puts ' #{ display_player(@game_board[1][0])} | #{ display_player(@game_board[1][1])} | #{ display_player(@game_board[1][2])}   '
	puts '-------------'
	puts ' #{ display_player(@game_board[2][0])} | #{ display_player(@game_board[2][1])} | #{ display_player(@game_board[2][2])}   '
end

def display_player(player_choice)
	if player_choice == 1
		'X'
	elsif player_choice == 2
		'O'
	else''
	end
end

while game_on == true
	display_board
	puts "Player 1 Choice (1-9):"
	player_1_choice = gets.chomp
	case player_1_choice
	when 1
		game_board[0][1] = 1
	when 2
		game_board[0][1] = 1
	when 3
		game_board[0][1] = 1
	when 4
		game_board[0][1] = 1
	when 5
		game_board[0][1] = 1
	when 6
		game_board[0][1] = 1
	when 7
	when 8
	when 9
end


#display_board

#10.times do 
#	puts "Hey man"	
#end
# a = [0,1,2,3,4,5,6,7,8,9]
# a.length

# a.each do |i|
	# puts i
# end

# for i in a 
	# puts i
# end

# if a.length == 10
	# puts "Yay it's 10!"

# if a[1] > 0
	# puts "this is greater!"
# end
#Ruby Functions