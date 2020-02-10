class AddColumnToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :number_of_guest, :integer, default: 0
    add_column :bookings, :confirmed, :boolean, default: false
    add_column :bookings, :paid, :boolean, default: false
    add_column :bookings, :number_of_night, :integer, default: 0
    add_column :bookings, :cleaning_fee, :float, default: 0.00
    add_column :bookings, :service_fee, :float, default: 0.00
    add_column :bookings, :sub_total, :float, default: 0.00
    add_column :bookings, :room_rate, :float, default: 0.00
  end
end
