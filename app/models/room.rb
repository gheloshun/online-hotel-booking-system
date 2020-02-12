class Room < ApplicationRecord
  belongs_to :hotel
  belongs_to :room_class
  has_many :bookings
  has_many_attached :images

  def display_image input
    return self.images[input].variant(resize_to_limit: [500, 500])
  end

  def card_image input
    return self.images[input].variant(resize_to_limit: [250, 250])
  end
end
