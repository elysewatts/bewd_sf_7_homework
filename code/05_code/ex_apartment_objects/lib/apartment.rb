require 'pry'
require 'pry-byebug'

<<<<<<< HEAD

#Apartment class.
class Apartment
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms

	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
	end

	

=======
class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
  end


  def to_s
    "Apartment #{name} has #{sqft} sqft"
  end
>>>>>>> e08433641a074b0f008e0e9ae312440915e4e259

end


