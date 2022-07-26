# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_26_220731) do

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.integer "cost"
    t.integer "ma"
    t.integer "st"
    t.string "ag"
    t.string "pa"
    t.string "av"
    t.string "skills"
    t.string "traits"
    t.string "primary"
    t.string "secondary"
    t.integer "race_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["race_id"], name: "index_positions_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "special"
    t.integer "tier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "positions", "races"
end