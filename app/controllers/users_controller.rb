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

	end

end