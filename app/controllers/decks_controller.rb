class DecksController < ApplicationController
	def index
	end

	def show
		@cards = Card.where(deck_id: params[:id])	
	end

	def new
		@deck = Deck.new
	end

	def create
		
		@deck = Deck.new(deck_params)
		
		@deck.cards.delete_all

		card_array = Array.new
		#split values into array, build new cards, delete first merged card
		deck_params[:cards_attributes].values.each do |card|
			card_array = card[:text].split("\r\n")
		end

		card_array.each do |text|
			@deck.cards.build(deck_id: @deck.id, text: text)
		end
		
		if @deck.save
      		flash[:notice] = "New Deck Created!"
      		redirect_to decks_path
    	else
      		render 'new'
    	end
	end

	def edit
	end

	def update
	end

	def delete
	end

	private 
		def deck_params
			params.require(:deck).permit(:name, :cards_attributes => [:id, :text, :deck_id])
		end
end
