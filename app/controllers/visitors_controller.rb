class VisitorsController < ApplicationController

	def home
		@decks = Deck.all.where(user_id: 0)
	end

end
