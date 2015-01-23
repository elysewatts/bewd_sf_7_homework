# == Schema Information
#
# Table name: songs
#
#  id              :integer          not null, primary key
#  name            :string
#  artist          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#



class Song < ActiveRecord::Base
	belongs_to :artist
	validates_presence_of :name
	validates_uniqueness_of :name
end
