class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room, optional: true
  has_many_attached :images
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :user_id, presence: true
  validates :room_id, presence: true
  validates :number_of_guest, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :number_of_night, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :cleaning_fee, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :service_fee, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :sub_total, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :room_rate, presence: true, numericality: { only_integer: false, greater_than: 0 }
  validates :status, presence: true
end
