class ProfilesController < ApplicationController
	respond_to :html

	def index
		@users = User.all
		respond_with @users
	end


	def show
		respond_with @user
	end
end
