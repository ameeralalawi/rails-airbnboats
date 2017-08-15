# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170815095914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availability_slots", force: :cascade do |t|
    t.date "date"
    t.bigint "boat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id"], name: "index_availability_slots_on_boat_id"
  end

  create_table "boat_photos", force: :cascade do |t|
    t.string "url"
    t.bigint "boat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id"], name: "index_boat_photos_on_boat_id"
  end

  create_table "boats", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "subcategory"
    t.boolean "skipper"
    t.text "description"
    t.integer "num_of_beds"
    t.integer "num_of_bath"
    t.string "location"
    t.integer "capacity"
    t.integer "price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_boats_on_user_id"
  end

  create_table "booking_slots", force: :cascade do |t|
    t.bigint "availability_slot_id"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["availability_slot_id"], name: "index_booking_slots_on_availability_slot_id"
    t.index ["booking_id"], name: "index_booking_slots_on_booking_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.text "intro"
    t.string "start_date"
    t.string "end_date"
    t.integer "rating"
    t.bigint "boat_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id"], name: "index_bookings_on_boat_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "availability_slots", "boats"
  add_foreign_key "boat_photos", "boats"
  add_foreign_key "boats", "users"
  add_foreign_key "booking_slots", "availability_slots"
  add_foreign_key "booking_slots", "bookings"
  add_foreign_key "bookings", "boats"
  add_foreign_key "bookings", "users"
end
