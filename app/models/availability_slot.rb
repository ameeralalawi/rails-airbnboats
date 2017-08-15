class AvailabilitySlot < ApplicationRecord
  belongs_to :boat
  has_many :booking_slots

  validates :date, presence: true
  validates :boat_id, presence: true, uniqueness: {scope: :date}
end
