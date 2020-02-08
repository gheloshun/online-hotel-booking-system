class CreateRoomClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :room_classes do |t|
      t.string :room_class
      t.text :room_info
      t.string :bedroom_contents, array: true, default: []
      t.string :balcony_contents, array: true, default: []
      t.string :kitchen_contents, array: true, default: []
      t.string :living_room_contents, array: true, default: []

      t.timestamps
    end
  end
end
