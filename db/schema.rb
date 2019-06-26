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

ActiveRecord::Schema.define(version: 2019_06_25_220029) do

  create_table "applications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "hebname"
    t.date "DOB"
    t.string "place_of_birth"
    t.float "age"
    t.string "grade"
    t.string "school"
    t.string "address"
    t.string "city"
    t.string "prov"
    t.string "ZIP"
    t.string "home_phone"
    t.string "camper_cell"
    t.string "camper_email"
    t.string "emg_contact"
    t.string "emg_contact_phone"
    t.string "health_card"
    t.string "med_info"
    t.string "other_info"
    t.string "ref1"
    t.string "ref1_school_phone"
    t.string "ref1_phone"
    t.string "ref2"
    t.string "ref2_school_phone"
    t.string "ref2_phone"
    t.string "father"
    t.string "d_marital_status"
    t.string "d_occupation"
    t.string "d_h_phone"
    t.string "d_cell"
    t.string "d_b_phone"
    t.string "d_email"
    t.string "mother"
    t.string "m_marital_status"
    t.string "m_occupation"
    t.string "m_h_phone"
    t.string "m_cell"
    t.string "m_b_phone"
    t.string "m_email"
    t.string "synagogue"
    t.string "rabbi"
    t.string "session"
  end

  create_table "fundraisers", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "address"
    t.string "city"
    t.string "provence"
    t.string "ZIP"
    t.string "country"
    t.integer "phone"
    t.integer "cell"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.integer "goal"
    t.text "summary"
    t.string "photo_main"
    t.string "photo_banner"
    t.float "amount_raised"
    t.string "how_heard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "token"
    t.string "expires_at"
    t.boolean "expires"
    t.string "refresh_token"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
