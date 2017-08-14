class CreateBoatPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :boat_photos do |t|
      t.string :url
      t.references :boat, foreign_key: true

      t.timestamps
    end
  end
end
