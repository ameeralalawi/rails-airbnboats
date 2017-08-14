class AvailabilitySlot < ApplicationRecord
  belongs_to :boat
  has_many :booking_slots
end
