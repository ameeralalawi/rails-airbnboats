class BookingSlot < ApplicationRecord
  belongs_to :availability_slot
  belongs_to :booking
end
