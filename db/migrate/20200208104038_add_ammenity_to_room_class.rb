class AddAmmenityToRoomClass < ActiveRecord::Migration[6.0]
  def change
    add_reference :room_classes, :ammenity, null: false, foreign_key: true
  end
end
