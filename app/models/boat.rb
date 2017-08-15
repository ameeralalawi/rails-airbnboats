class Boat < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :availability_slots
  has_many :bookings
  has_attachments :photos, maximum: 5
end
