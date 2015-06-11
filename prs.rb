CHOICES = {'p'=> 'paper', 'r' => 'rock', 's' => 'scissors'}

require 'pry'

def display_winning_message(winning_choice)
	case winning_choice
		when 'p'
			puts "Paper covers Rock"
		when 'r'
			puts	"Rock crushes Scissors!"
		when 's'
			puts	"Scissor's cuts Paper!"
	end
end 


puts 'Welcome To Paper, Rock, Scissors'



loop do
	begin
		puts 'Pick one: (p,r,s)'
		player_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(player_choice)

	computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
  	puts "It's a tie!"
	elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || 
		 (player_choice == 's' && computer_choice == 'p') 

	display_winning_message(player_choice)
		puts 'You won!'
	else
	display_winning_message(computer_choice)
		puts 'Computer won!'
	end

	puts "Would you like to play again?"
		break if gets.chomp.downcase != 'y'
		

end

puts "Good bye!"
		