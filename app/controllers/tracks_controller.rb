class TracksController < ApplicationController
	def index
	end

private
	def track_params
		params.require(:user).permit(:name, :creator, :user_tracks)
	end
end
