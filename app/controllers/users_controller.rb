class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to users_path
		else
			render :new
		end

	end
	def show
		user_id = params[:id]
		@user = User.find(user_id)
		@p = Photo.new

		if (@authenticated_user == @user)
			@show = false
			@matched = false
		elsif (Match.where(:sender_id => @authenticated_user, :receiver_id => @user).empty?)
			@show = true
			@matched = false
		elsif (Match.where(:sender_id => @authenticated_user, :receiver_id => @user).first.match)
			@show = false
			@matched = true
		elsif !(Match.where(:sender_id => @authenticated_user, :receiver_id => @user).first.match)
			@show = false
			@matched = false
		end

	end
	def edit
		user_id = params[:id]
		@user = User.find(user_id)
	end
end