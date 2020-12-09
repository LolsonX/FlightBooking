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

ActiveRecord::Schema.define(version: 2020_12_09_190054) do

  create_table "air_connections", force: :cascade do |t|
    t.integer "origin_airport_id", null: false
    t.integer "destination_airport_id", null: false
    t.string "aircraft", null: false
    t.integer "distance", null: false
    t.string "segment_number", null: false
    t.integer "economy_seats", default: 0, null: false
    t.integer "buisness_seats", default: 0, null: false
    t.integer "first_class_seats", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_airport_id"], name: "index_air_connections_on_destination_airport_id"
    t.index ["origin_airport_id"], name: "index_air_connections_on_origin_airport_id"
  end

  create_table "airports", force: :cascade do |t|
    t.string "iata_code", limit: 3, null: false
    t.string "name", limit: 255, null: false
    t.integer "airport_type", null: false
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_airports_on_city_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "city_name", null: false
    t.string "country", null: false
    t.string "language", null: false
    t.string "country_iso_code", limit: 3, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer "air_connection_id", null: false
    t.datetime "departure_time", null: false
    t.datetime "arrival_time", null: false
    t.float "economy_seat_price", null: false
    t.float "buisness_seat_price", null: false
    t.float "first_class_seat_price", null: false
    t.float "flying_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["air_connection_id"], name: "index_flights_on_air_connection_id"
  end

  create_table "intermediate_airports", force: :cascade do |t|
    t.integer "airport_id", null: false
    t.integer "air_connection_id", null: false
    t.integer "stop_number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["air_connection_id"], name: "index_intermediate_airports_on_air_connection_id"
    t.index ["airport_id"], name: "index_intermediate_airports_on_airport_id"
  end

  create_table "rates", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "comment", null: false
    t.integer "rateable_id", null: false
    t.string "rateable_type", null: false
    t.integer "rating", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rates_on_user_id"
  end

  create_table "seats", force: :cascade do |t|
    t.integer "flight_id", null: false
    t.integer "user_id", null: false
    t.integer "seat_class", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_seats_on_flight_id"
    t.index ["user_id"], name: "index_seats_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "birth_date", null: false
    t.string "phone_number", null: false
    t.string "address", null: false
    t.string "id_document_number", null: false
    t.integer "id_document_type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["phone_number"], name: "index_users_on_phone_number", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "air_connections", "airports", column: "destination_airport_id"
  add_foreign_key "air_connections", "airports", column: "origin_airport_id"
  add_foreign_key "airports", "cities"
  add_foreign_key "flights", "air_connections"
  add_foreign_key "intermediate_airports", "air_connections"
  add_foreign_key "intermediate_airports", "airports"
  add_foreign_key "rates", "users"
  add_foreign_key "seats", "flights"
  add_foreign_key "seats", "users"
end
