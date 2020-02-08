class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.float :room_rate
      t.boolean :occupied
      t.integer :max_capacity
      t.references :hotel, null: false, foreign_key: true
      t.references :room_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
