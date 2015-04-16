class ChangeAbilityIdInUsers < ActiveRecord::Migration
  def change
    remove_foreign_key :users, column: :ability_id
    rename_column :users, :ability_id, :ability
  end
end
