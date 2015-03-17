class UsersController < ApplicationController
	before_filter :authenticate_user!, :except => [:show, :index]
	def index

	end

	def console
	end

	def simple_interface
		@user = User.find params[:user_id]
	end

	def dynamic_interface
		@user = User.find params[:user_id]
	end

	def create
		User.create(user_params)
	end

	def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
