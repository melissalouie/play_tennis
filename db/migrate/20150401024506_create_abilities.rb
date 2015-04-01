class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :level
    end
  end
end
