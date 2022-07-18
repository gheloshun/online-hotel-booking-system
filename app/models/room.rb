class Room < ApplicationRecord
  belongs_to :hotel
  belongs_to :room_class
  has_many :bookings
  has_many_attached :images
  ROOM_NUMBER_FORMAT = /\d{3}/
  validates :room_number, presence: true, format: { with: ROOM_NUMBER_FORMAT }, length: { maximum: 3 }
  validates :room_rate, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :cleaning_fee, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :service_fee, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :max_capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :hotel_id, presence: true
  validates :room_class_id, presence: true
  validates :room_name, presence: true, length: { maximum: 100 }


  def display_image input
    return self.images[input].variant(resize_to_limit: [500, 500])
  end

  def card_image input
    return self.images[input].variant(resize_to_limit: [250, 250])
  end
end
