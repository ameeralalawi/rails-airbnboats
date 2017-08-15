class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  has_many :booking_slots

  validates :status, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :boat_id, presence: true
  validates :user_id, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
