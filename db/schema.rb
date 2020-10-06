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

ActiveRecord::Schema.define(version: 2020_09_22_203518) do

  create_table "journals", force: :cascade do |t|
    t.integer "user_id"
    t.integer "trail_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trails", force: :cascade do |t|
    t.integer "hiker_project_id"
    t.datetime "date_of_run"
    t.boolean "t_shirt", default: false
    t.boolean "shorts", default: false
    t.boolean "pants", default: false
    t.boolean "hat", default: false
    t.boolean "jacket", default: false
    t.boolean "gloves", default: false
    t.boolean "shoes", default: false
    t.boolean "socks", default: false
    t.boolean "map", default: false
    t.boolean "watch", default: false
    t.boolean "cellphone", default: false
    t.boolean "food", default: false
    t.boolean "running_pack", default: false
    t.boolean "water", default: false
    t.boolean "first_aid_pack", default: false
    t.boolean "sunscreen", default: false
    t.boolean "bugspray", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
