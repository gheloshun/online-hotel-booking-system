class Hotel < ApplicationRecord
  belongs_to :hotel_contact
  has_many :rooms
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :total_bill, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :number_of_guest, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :number_of_night, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :cleaning_fee, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :service_fee, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :sub_total, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :room_rate, presence: true, numericality: { only_integer: false, greater_than: 0 }
end
