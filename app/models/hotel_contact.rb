class HotelContact < ApplicationRecord
  has_many :hotels
  CONTACT_NUMBER_REGEX = /(\+?\d{2}?\s?\d{3}\s?\d{3}\s?\d{4})|([0]\d{3}\s?\d{3}\s?\d{4})/
  validates :contact_number, presence: true, format: { with: CONTACT_NUMBER_REGEX }
end
