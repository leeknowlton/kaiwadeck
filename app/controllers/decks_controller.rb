class DecksController < ApplicationController

	def index
	end

	def show
		@cards = Deck.find(params[:id]).cards	
	end

	def new
		@deck = Deck.new
	end

	def create
		@deck = Deck.new(deck_params)		
		if @deck.save
      		flash[:notice] = "New Deck Created!"
      		redirect_to decks_path
    	else
      		render 'new'
    	end
	end

	def edit
		@deck = Deck.find(params[:id])
		@deck.cards = @deck.cards.join("\r\n")
	end

	def update
		@deck = Deck.find(params[:id])
		if @deck.update_attributes(deck_params)
      		flash[:notice] = "Deck Updated!"
      		redirect_to decks_path
    	else
      		render 'edit'
    	end
	end

	def delete
	end

	private 
		def deck_params
			params.require(:deck).permit(:name, :cards)
		end
end
