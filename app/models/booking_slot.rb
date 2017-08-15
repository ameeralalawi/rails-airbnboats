class BookingSlot < ApplicationRecord
  belongs_to :availability_slot
  belongs_to :booking
  validates :booking_id, presence: true
  validates :availability_slot_id, presence: true, uniqueness: true
end
