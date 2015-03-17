class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :user_id, :integer
  end
end
