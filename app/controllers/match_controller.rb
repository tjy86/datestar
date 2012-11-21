class MatchController < ApplicationController
	def index
		user_id = params[:id]
		@receiver = User.find(user_id)
		@q = Question.where(:user_id => @receiver.id).sample
		@a = Answer.where(:question_id => @q.id)
  	end
end