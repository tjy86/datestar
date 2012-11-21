class AnswersController < ApplicationController
	before_filter :authenticate_user

	def index
		@a = Answer.new
	end

	def create
		@a = Answer.new(params[:answer])
		if @a.save
			redirect_to users_path
		else
			render :index
		end

	end
	def destroy

	end
end