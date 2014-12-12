
require 'pry'
require 'pry-byebug'


#Building Class

class Building
<<<<<<< HEAD
	attr_accessor :building_name, :building_address

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
	end
=======
  attr_accessor :name, :address, :apartments

  def initialize(name,address)
    @name = name
    @address = address
    @apartments = {}
  end
>>>>>>> e08433641a074b0f008e0e9ae312440915e4e259
end
