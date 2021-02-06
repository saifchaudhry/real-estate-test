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

ActiveRecord::Schema.define(version: 2021_02_06_101651) do

  create_table "assets", force: :cascade do |t|
    t.string "owner"
    t.string "address"
    t.integer "rooms", default: 0
    t.integer "sqmt", default: 0
    t.integer "floors", default: 0
    t.integer "units", default: 0
    t.integer "shops", default: 0
    t.decimal "price", default: "0.0"
    t.decimal "parking", default: "0.0"
    t.boolean "air_cond", default: false
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "image"
    t.string "picturable_type"
    t.integer "picturable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
