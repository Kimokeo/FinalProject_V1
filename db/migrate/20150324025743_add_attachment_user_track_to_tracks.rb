class AddAttachmentUserTrackToTracks < ActiveRecord::Migration
  def self.up
    change_table :tracks do |t|
      t.attachment :user_track
    end
  end

  def self.down
    remove_attachment :tracks, :user_track
  end
end
