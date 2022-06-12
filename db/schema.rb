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

ActiveRecord::Schema[7.0].define(version: 2022_06_12_082106) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "apartment_translations", force: :cascade do |t|
    t.bigint "apartment_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.string "nature"
    t.text "description"
    t.index ["apartment_id"], name: "index_apartment_translations_on_apartment_id"
    t.index ["locale"], name: "index_apartment_translations_on_locale"
  end

  create_table "apartments", force: :cascade do |t|
    t.string "location"
    t.integer "size"
    t.integer "number_of_rooms"
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "price"
    t.integer "price_per_room"
    t.string "category"
    t.string "photo"
    t.text "description"
    t.integer "bathroom"
    t.integer "toilet"
    t.integer "shower_room"
    t.boolean "terrace", default: false
    t.boolean "living_room", default: true
    t.boolean "dining_room", default: false
    t.boolean "kitchen", default: true
    t.boolean "washing_machine", default: true
    t.boolean "washing_room", default: false
    t.date "availability"
    t.string "nature"
    t.string "slug"
    t.index ["slug"], name: "index_apartments_on_slug", unique: true
  end

  create_table "photos", force: :cascade do |t|
    t.string "url"
    t.bigint "apartment_id"
    t.bigint "room_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["apartment_id"], name: "index_photos_on_apartment_id"
    t.index ["room_id"], name: "index_photos_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "apartment_id"
    t.integer "size"
    t.string "name"
    t.text "commodities"
    t.text "description"
    t.date "availability"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["apartment_id"], name: "index_rooms_on_apartment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "admin", default: false, null: false
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.datetime "token_expiry", precision: nil
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "photos", "apartments"
  add_foreign_key "photos", "rooms"
  add_foreign_key "rooms", "apartments"
end
