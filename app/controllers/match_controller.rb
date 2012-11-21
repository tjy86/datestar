class MatchController < ApplicationController
	def index
		user_id = params[:id]
		@receiver = User.find(user_id)
		@q = Question.where(:user_id => @receiver.id).sample
		@a = Answer.where(:question_id => @q.id)
  	end
  	def check
			@r = params[:receiver]
			@q = params[:question]
  		@choice = params[:answer]

  		if @authenticated_user && @choice == Answer.find_by_question_id(@q).answer1
  			m = Match.new
  			m[:sender_id] = @authenticated_user.id
  			m[:receiver_id] = @r.to_i
  			m[:match] = 1
  			m.save
  			redirect_to root_path
  		else
  			m = Match.new
  			m[:sender_id] = @authenticated_user.id
  			m[:receiver_id] = @r.to_i
  			m[:match] = 0
  			m.save
  			redirect_to users_path
  		end

  	end
end