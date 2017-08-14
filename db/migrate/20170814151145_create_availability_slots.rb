class CreateAvailabilitySlots < ActiveRecord::Migration[5.1]
  def change
    create_table :availability_slots do |t|
      t.date :date
      t.references :boat, foreign_key: true

      t.timestamps
    end
  end
end
