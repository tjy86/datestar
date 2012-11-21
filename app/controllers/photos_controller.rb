class PhotosController < ApplicationController
	before_filter :authenticate_user

	def index
		@p = Photo.new
	end

	def create
		@photo = Photo.new(params[:photo])
		if @photo.save
			redirect_to users_path
		else
			render :index
		end

	end
	def destroy

	end
end