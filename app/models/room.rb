class Room < ApplicationRecord
  belongs_to :hotel
  belongs_to :room_class
  has_many :bookings
  has_many_attached :images
end
