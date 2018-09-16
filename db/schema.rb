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

ActiveRecord::Schema.define(version: 20180902105856) do

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
    t.bigint "gallery_id"
    t.string "gallery_image_file_name"
    t.string "gallery_image_content_type"
    t.bigint "gallery_image_file_size"
    t.datetime "gallery_image_updated_at"
    t.boolean "gallery_cover", default: false
    t.bigint "info_id"
    t.string "info_image_file_name"
    t.string "info_image_content_type"
    t.bigint "info_image_file_size"
    t.datetime "info_image_updated_at"
    t.bigint "slider_id"
    t.string "slider_image_file_name"
    t.string "slider_image_content_type"
    t.bigint "slider_image_file_size"
    t.datetime "slider_image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gallery_id"], name: "index_images_on_gallery_id"
    t.index ["info_id"], name: "index_images_on_info_id"
    t.index ["slider_id"], name: "index_images_on_slider_id"
  end

  create_table "infos", force: :cascade do |t|
    t.string "link"
    t.string "title"
    t.string "description"
    t.string "keywords"
    t.string "name"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sliders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  add_foreign_key "images", "infos"
  add_foreign_key "images", "sliders"
end
