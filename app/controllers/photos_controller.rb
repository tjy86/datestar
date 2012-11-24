class PhotosController < ApplicationController
	before_filter :authenticate_user

	def index
		@p = Photo.new
	end

	def create
		# raise params.inspect

		user_id = params[:photo][:user_id]
		@user = User.find(user_id)
		@photo = Photo.new(params[:photo])

		if @photo.save
			redirect_to @user
		else
			render :index
		end

	end
	def destroy

	end
end