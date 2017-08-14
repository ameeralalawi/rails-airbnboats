class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  has_many :booking_slots
end
