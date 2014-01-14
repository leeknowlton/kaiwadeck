class DecksController < ApplicationController
	def index
	end

	def show
		@cards = Card.where(deck_id: params[:id]).shuffle
	end
end
