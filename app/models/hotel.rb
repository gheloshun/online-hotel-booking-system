class Hotel < ApplicationRecord
  belongs_to :hotel_contact
  has_many :rooms
end
