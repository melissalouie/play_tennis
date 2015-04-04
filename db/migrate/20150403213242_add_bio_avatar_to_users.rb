class AddBioAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :string
    add_column :users, :avatar, :string
  end
end
