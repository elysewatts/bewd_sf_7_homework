require 'lib/player'
require 'lib/secret_number'
require 'pry'
require 'pry-byebug'


class Game #this class contains most of the game logic/behavior
	attr_accessor :secret, :player, :guess_num

	def initialize(player_name) # the player_name comes from main.rb
		@secret = SecretNumber.new # Initialize the Secret Number class / ie get a secret number to play with
		@player = Player.new(player_name) #	Initialize the Player class
		@guess_num = 0 # numbering the guesses as they are made lets me tell the player which guess they are on. I prefer this to the countdown from 3. 
	end


def start 	# Why can't I get player_name to print??
	puts "Hello #{@player.name}, and welcome to the secret number game!"
	puts "The secret number is between 1 and 10."
	puts "You get three guesses."

	while @guess_num < 3 
		get_guess
		break if @guess == @secret.number
	end
end

private

def get_guess 
	@guess_num += 1
	puts "Guess \##{@guess_num}:" 
	@guess = gets.to_i
	#puts `clear` # I love this! I can clear the terminal screen within the program! but how do these backticks work...
	check_guess(@guess)
end

def check_guess(guess) # interesting how you can just call this instance varas a regular var
# don't quite understand what is going on there

##### my ifs are not working, everything prints :(( #####

	if guess == @secret.number
		puts "YOU WIN!"
	elsif guess != @secret.number && @guess_num < 3 
		if guess > @secret.number
			puts "Too high. Guess again."
		elsif guess < @secret.number 
			puts "Too low. Guess again."
		end 
	else puts "GAME OVER"
		puts "Then number was #{@secret.number}."
		puts "Play again sometime."
	end
end

end