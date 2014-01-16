class Deck < ActiveRecord::Base
	has_many :cards, dependent: :destroy
	accepts_nested_attributes_for :cards
end
