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

ActiveRecord::Schema[7.0].define(version: 2022_12_14_123328) do
  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storageregions_userregions", id: false, force: :cascade do |t|
    t.integer "storageregion_id", null: false
    t.integer "userregion_id", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.string "orientation"
    t.string "name"
    t.string "section"
    t.string "region_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role_id", null: false
    t.integer "storage_id", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["storage_id"], name: "index_users_on_storage_id"
  end

  add_foreign_key "users", "roles"
  add_foreign_key "users", "storages"
end
