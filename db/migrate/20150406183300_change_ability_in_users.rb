class ChangeAbilityInUsers < ActiveRecord::Migration
  def change
    change_column :users, :ability, :string
  end
end
