class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.float :room_rate, default: 0.00
      t.boolean :occupied, default: false
      t.integer :max_capacity
      t.references :hotel, null: false, foreign_key: true
      t.references :room_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
