class	MessagesController < ApplicationController
	def index
		user_id = params[:id]
		@receiver = User.find(user_id)
	end
end