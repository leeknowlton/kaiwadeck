module DecksHelper
	def setup_deck_cards
		@deck.cards.build(deck_id: @deck.id)
	end
end
