class AddColumnToRoom < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :room_name, :string
    add_column :rooms, :cleaning_fee, :float, default: 0.00
    add_column :rooms, :service_fee, :float, default: 0.00
    add_column :rooms, :published, :boolean, default: true
  end
end
