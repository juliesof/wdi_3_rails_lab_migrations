# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140624164426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tow_trucks", force: true do |t|
    t.text    "make",                null: false
    t.text    "model",               null: false
    t.integer "year",                null: false
    t.date    "acquired_on"
    t.text    "notes"
    t.integer "mileage"
    t.date    "most_recent_service"
  end

  create_table "vehicles", force: true do |t|
    t.text    "make",                         null: false
    t.text    "model",                        null: false
    t.text    "vin",                          null: false
    t.date    "acquired_on"
    t.text    "notes"
    t.boolean "is_tow_truck", default: false, null: false
    t.date    "picked_up_at"
    t.text    "vehicle_type",                 null: false
  end

  add_index "vehicles", ["vehicle_type"], name: "index_vehicles_on_vehicle_type", using: :btree
  add_index "vehicles", ["vin"], name: "index_vehicles_on_vin", unique: true, using: :btree

end
