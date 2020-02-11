class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room, optional: true
  has_many_attached :images
end
