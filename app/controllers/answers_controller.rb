class AnswersController < ApplicationController
	before_filter :authenticate_user

	def index
		@a = Answer.new
	end

	def create

		@a = Answer.new(params[:answer])

		if @a.save
			Match.new
		else
			render :index
		end

	end
	def destroy

	end
end