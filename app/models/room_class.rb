class RoomClass < ApplicationRecord
  has_many :rooms
  has_many :ammenities
  validates :room_class, presence: true, length: { maximum: 100 }
  validates :room_info, presence: true, length: { maximum: 255 }
end
