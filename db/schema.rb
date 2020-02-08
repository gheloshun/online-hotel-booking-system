# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_08_111134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ammenities", force: :cascade do |t|
    t.text "ammenities", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.date "date"
    t.time "time_in"
    t.time "time_out"
    t.float "total_bill", default: 0.0
    t.bigint "user_id", null: false
    t.bigint "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_bookings_on_room_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "hotel_contacts", force: :cascade do |t|
    t.string "contact_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "hotel_name"
    t.string "hotel_address"
    t.bigint "hotel_contact_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hotel_contact_id"], name: "index_hotels_on_hotel_contact_id"
  end

  create_table "room_classes", force: :cascade do |t|
    t.string "room_class"
    t.text "room_info"
    t.string "bedroom_contents", default: [], array: true
    t.string "balcony_contents", default: [], array: true
    t.string "kitchen_contents", default: [], array: true
    t.string "living_room_contents", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "ammenity_id", null: false
    t.index ["ammenity_id"], name: "index_room_classes_on_ammenity_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_number"
    t.float "room_rate", default: 0.0
    t.boolean "occupied", default: false
    t.integer "max_capacity"
    t.bigint "hotel_id", null: false
    t.bigint "room_class_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
    t.index ["room_class_id"], name: "index_rooms_on_room_class_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.datetime "birthdate"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "rooms"
  add_foreign_key "bookings", "users"
  add_foreign_key "hotels", "hotel_contacts"
  add_foreign_key "room_classes", "ammenities"
  add_foreign_key "rooms", "hotels"
  add_foreign_key "rooms", "room_classes"
end
