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

ActiveRecord::Schema.define(version: 20170624224406) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.float    "time"
    t.text     "info"
    t.integer  "package_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_id"], name: "index_items_on_package_id"
  end

  create_table "packages", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.float    "price"
    t.float    "time"
    t.index ["item_id"], name: "index_packages_on_item_id"
    t.index ["user_id"], name: "index_packages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.text     "info"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "password_digest"
    t.string   "email"
    t.integer  "property"
    t.integer  "package_id"
    t.index ["package_id"], name: "index_users_on_package_id"
  end

end
