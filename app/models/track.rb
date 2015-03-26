class Track < ActiveRecord::Base
	has_many :users
	has_attached_file :user_track, :styles => { :medium => "300x100>", :thumb => "100x100>" }, :default_url => "/midistore/"
end
