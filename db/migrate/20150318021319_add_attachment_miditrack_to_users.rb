class AddAttachmentMiditrackToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :miditrack
    end
  end

  def self.down
    remove_attachment :users, :miditrack
  end
end
