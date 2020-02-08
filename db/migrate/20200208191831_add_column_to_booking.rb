class AddColumnToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :number_of_guest, :integer, default: 0
    add_column :bookings, :confirmed, :boolean, default: false
  end
end
