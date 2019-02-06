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

ActiveRecord::Schema.define(version: 2018_09_30_145822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consumptions", force: :cascade do |t|
    t.string "name"
    t.string "packing"
    t.string "layer_thickness"
    t.string "consumption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string "title"
    t.string "alt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "title"
    t.string "alt"
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.bigint "logo_file_size"
    t.datetime "logo_updated_at"
    t.string "background_file_name"
    t.string "background_content_type"
    t.bigint "background_file_size"
    t.datetime "background_updated_at"
    t.string "tagline_file_name"
    t.string "tagline_content_type"
    t.bigint "tagline_file_size"
    t.datetime "tagline_updated_at"
    t.bigint "gallery_id"
    t.string "gallery_image_file_name"
    t.string "gallery_image_content_type"
    t.bigint "gallery_image_file_size"
    t.datetime "gallery_image_updated_at"
    t.boolean "gallery_cover", default: false
    t.bigint "slider_id"
    t.string "slider_image_file_name"
    t.string "slider_image_content_type"
    t.bigint "slider_image_file_size"
    t.datetime "slider_image_updated_at"
    t.string "static_image_file_name"
    t.string "static_image_content_type"
    t.bigint "static_image_file_size"
    t.datetime "static_image_updated_at"
    t.string "info_image_file_name"
    t.string "info_image_content_type"
    t.bigint "info_image_file_size"
    t.datetime "info_image_updated_at"
    t.string "vid_remonta_image_file_name"
    t.string "vid_remonta_image_content_type"
    t.bigint "vid_remonta_image_file_size"
    t.datetime "vid_remonta_image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gallery_id"], name: "index_images_on_gallery_id"
    t.index ["slider_id"], name: "index_images_on_slider_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "material_type"
    t.string "name"
    t.string "packing"
    t.string "layer_thickness"
    t.float "consumption"
    t.string "consumption_unit"
    t.integer "shine"
    t.integer "second_layer_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sliders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.boolean "admin", default: false
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.string "name", null: false
    t.string "price", null: false
    t.string "unit", null: false
    t.string "plane", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "images", "galleries"
  add_foreign_key "images", "sliders"
end
