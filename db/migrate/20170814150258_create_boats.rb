class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.boolean :skipper
      t.text :description
      t.integer :num_of_beds
      t.integer :num_of_bath
      t.string :location
      t.integer :capacity
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
