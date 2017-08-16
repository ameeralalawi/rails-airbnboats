class Boat < ApplicationRecord
  belongs_to :user
  has_many :availability_slots
  has_many :bookings

  validates :name, presence: true, length: { maximum: 30 }
  validates :category, presence: true, inclusion: { in: ["Motor", "Sailing"] }
  validates :subcategory, presence: true, inclusion: { in: ["Rigid", "Semi-rigid", "Dinghy", "Catamaran", "Keelboat"] }
  validates :skipper, inclusion: { in: [true, false] }
  validates :description, presence: true
  validates :num_of_beds, presence: true, inclusion: { in: 0..15 }
  validates :num_of_bath, presence: true, inclusion: { in: 0..15 }
  validates :location, presence: true, inclusion: { in: ["Lisbon", "Algarve", "Porto"] }
  validates :capacity, presence: true, inclusion: { in: 0..1000 }
  validates :price, presence: true, inclusion: { in: 0..10000 }
  validates :user_id, presence: true

  has_attachments :photos, maximum: 5

end
