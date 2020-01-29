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

ActiveRecord::Schema.define(version: 2020_01_29_092455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: :cascade do |t|
    t.string "flight_number"
    t.string "origin"
    t.string "destination"
    t.date "date"
    t.integer "plane_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planes", force: :cascade do |t|
    t.string "name"
    t.string "A1", default: "empty"
    t.string "A2", default: "empty"
    t.string "A3", default: "empty"
    t.string "A4", default: "empty"
    t.string "A5", default: "empty"
    t.string "B1", default: "empty"
    t.string "B2", default: "empty"
    t.string "B3", default: "empty"
    t.string "B4", default: "empty"
    t.string "B5", default: "empty"
    t.string "C1", default: "empty"
    t.string "C2", default: "empty"
    t.string "C3", default: "empty"
    t.string "C4", default: "empty"
    t.string "C5", default: "empty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
