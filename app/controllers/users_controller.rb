class UsersController < ApplicationController
	def dashboard
		@user = current_user
		#@recent_decks = @user.decks.where(created_at: )
	end
end
