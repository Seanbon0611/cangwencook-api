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

ActiveRecord::Schema.define(version: 2020_07_29_050645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "instructions", force: :cascade do |t|
    t.integer "recipe_id"
    t.string "step"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "size_xs"
    t.integer "size_s"
    t.integer "size_m"
    t.integer "size_l"
    t.integer "size_xl"
    t.integer "size_xxl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lineitems", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity", default: 1
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.float "total"
    t.boolean "payment_status"
    t.boolean "shipped_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.boolean "active"
    t.string "alt_image1"
    t.string "alt_image2"
    t.string "alt_image3"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "video_id"
    t.string "description"
    t.string "image"
    t.boolean "keto"
    t.boolean "gluten_free"
    t.boolean "low_calorie"
    t.boolean "paleo"
    t.boolean "dairy_free"
    t.boolean "vegetarian"
    t.boolean "quick"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "calories"
    t.integer "net_carbs"
    t.integer "fat"
    t.integer "protein"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "password_digest"
    t.boolean "is_admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
