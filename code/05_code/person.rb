require 'pry'
require 'pry-byebug'

class Person
<<<<<<< HEAD
	#getter && setter
	attr_accessor :name, :title, :job

	#instance factory maker
	def initialize(name)
		@name = name
	end

	#instance method
	def greet
		puts "Hey, my name is #{@name}"
	end

end

binding.pry
bryan = Person.new("Bryan")
=======

  #getter && setter logic
  attr_accessor :name, :title, :job

  #instance factory maker 
  def initialize(name)
    @name = name
  end

  #instance method 
  def greet
    puts "Hey, My name is #{@name}"
  end
end

>>>>>>> e08433641a074b0f008e0e9ae312440915e4e259
