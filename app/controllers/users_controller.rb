class UsersController < ApplicationController
	# before_filter :set_user_id, :except => [:show, :index]
	def index
		@users = User.all
	end

	def console
		@user = User.find params[:user_id]
	end

	def song_builder
		@user = User.find params[:user_id]
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

	def show
		@user = User.find params[:id]
	end
	
	def add_track
		@user = User.find params[:user_id]
		# User_track.create
	end
		
	# def set_user_id
	# 	@user = User.find params[:id]
	# end

private
	def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :miditrack)
  end
end
