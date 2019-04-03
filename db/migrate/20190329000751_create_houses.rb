class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.references :user, foreign_key: true
      t.integer :square
      t.string :addres
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
