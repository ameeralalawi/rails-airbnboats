class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.text :intro
      t.date :start_date
      t.date :end_date
      t.integer :rating
      t.references :boat, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
