class CreateBookingSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :booking_slots do |t|
      t.references :availability_slot, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
