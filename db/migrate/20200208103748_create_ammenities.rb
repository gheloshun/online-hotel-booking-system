class CreateAmmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :ammenities do |t|
      t.text :ammenities, array: true, default: []

      t.timestamps
    end
  end
end
