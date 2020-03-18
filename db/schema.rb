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

ActiveRecord::Schema.define(version: 2020_03_06_014751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_kinds", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_addresses_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "description"
    t.string "priority"
    t.string "status"
    t.bigint "user_id"
    t.bigint "client_id"
    t.bigint "product_id"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_deliveries_on_client_id"
    t.index ["product_id"], name: "index_deliveries_on_product_id"
    t.index ["user_id"], name: "index_deliveries_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.bigint "store_id"
    t.float "price"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "profile_accesses", force: :cascade do |t|
    t.string "object_access"
    t.bigint "access_kind_id"
    t.bigint "user_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_kind_id"], name: "index_profile_accesses_on_access_kind_id"
    t.index ["user_profile_id"], name: "index_profile_accesses_on_user_profile_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "description"
    t.integer "codename"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "super_user"
    t.string "office"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "clients"
  add_foreign_key "deliveries", "clients"
  add_foreign_key "deliveries", "products"
  add_foreign_key "deliveries", "users"
  add_foreign_key "products", "stores"
  add_foreign_key "profile_accesses", "access_kinds"
  add_foreign_key "profile_accesses", "user_profiles"
end
