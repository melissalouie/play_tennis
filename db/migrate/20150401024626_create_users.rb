class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :gender
      t.string :email
      t.string :password_digest
      t.belongs_to :ability, index: true
    end
    add_foreign_key :users, :abilities
  end
end
