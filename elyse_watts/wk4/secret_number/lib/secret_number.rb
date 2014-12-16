require 'pry'
require 'pry-byebug'


class SecretNumber
	attr_accessor :number

	def initialize
		@number = Array.new # create a new array

		10.times do |i| # fill the array with numbers 1 - 10
			i += 1 # nil + 1 = 1, do this ten times and we have 1 through 10
			@number << i #insert each number into the array
		end

		@number = @number.sample # this way the number is chosen at random and remains secret to everyone

	end
end
