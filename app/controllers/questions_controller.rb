class QuestionsController < ApplicationController
	before_filter :authenticate_user

	def index
		@question = Question.new
	end

	def create
		@question = Question.new(params[:question])
		if @question.save
			redirect_to answers_path
		else
			render :index
		end

	end
	def destroy

	end
end