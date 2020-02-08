class CreateHotelContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :hotel_contacts do |t|
      t.string :contact_number

      t.timestamps
    end
  end
end
