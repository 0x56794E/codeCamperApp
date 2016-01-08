class UsersController < ApplicationController
	respond_to :html
	before_action :find_user, except: [:index, :new, :create]

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

	private
	def user_params
		params.require(:user).permit(:name, :email, :location, :school, :generation)
	end

	def find_user
		@user = User.find(params[:id])
	end
end
