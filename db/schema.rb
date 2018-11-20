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

ActiveRecord::Schema.define(version: 20181120094223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "local_directories", force: :cascade do |t|
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scan_id"
  end

  create_table "local_files", force: :cascade do |t|
    t.string "source"
    t.string "name"
    t.string "directory"
    t.string "kind"
    t.string "size"
    t.string "md5"
    t.string "extension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "creation_time"
    t.integer "height"
    t.integer "width"
    t.string "description"
    t.integer "orientation"
    t.string "model"
    t.string "file_type"
    t.string "mime_type"
  end

  create_table "scans", force: :cascade do |t|
    t.string "aasm_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
