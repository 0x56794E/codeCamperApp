class UserController < ApplicationController
	respond_to :html

	def index
		@users = User.all
		respond_with @users
	end


	def show
		respond_with @user
	end

	def new
		@user = User.new
		respond_with @user
	end

	def create
			@user = User.create(user_params)
	end
end
