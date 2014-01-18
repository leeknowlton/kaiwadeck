class Deck < ActiveRecord::Base
	before_save :fix_card_array
	serialize :cards

	def fix_card_array
	  self[:cards] = self[:cards].split("\r\n")
	  self[:cards].reject! { |c| c.empty? }
	end
end
