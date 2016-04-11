# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160411141151) do

  create_table "categories", force: :cascade do |t|
    t.string   "product_category"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "customizables", force: :cascade do |t|
    t.string   "name"
    t.string   "remark"
    t.string   "series_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "features", force: :cascade do |t|
    t.string   "feature"
    t.string   "series_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "optional_accessories", force: :cascade do |t|
    t.string   "name"
    t.string   "series_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "series", force: :cascade do |t|
    t.string   "series_name"
    t.string   "product_name"
    t.string   "photo"
    t.integer  "chart_num"
    t.string   "chart1"
    t.string   "chart2"
    t.string   "chart3"
    t.string   "chart4"
    t.string   "chart5"
    t.string   "chart6"
    t.string   "chart7"
    t.integer  "structure_num"
    t.string   "structure1"
    t.string   "structure2"
    t.string   "structure3"
    t.string   "structure4"
    t.string   "docu50link"
    t.string   "docu60link"
    t.string   "product_categoty"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "spec_sheets", force: :cascade do |t|
    t.integer  "s_bore"
    t.integer  "d_bore"
    t.integer  "ref"
    t.string   "name"
    t.float    "kW"
    t.float    "Q1"
    t.float    "H1"
    t.float    "Q2"
    t.float    "H2"
    t.float    "Q3"
    t.float    "H3"
    t.integer  "stage"
    t.integer  "rotary"
    t.float    "starting_pressure"
    t.string   "adjustable_pressure_range"
    t.float    "accumulated_pressure"
    t.string   "noise"
    t.float    "power_factor"
    t.float    "max_pressure"
    t.string   "Hz"
    t.string   "series_name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "standard_accessories", force: :cascade do |t|
    t.string   "name"
    t.string   "remark"
    t.string   "series_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "standard_specs", force: :cascade do |t|
    t.string   "item"
    t.string   "content"
    t.string   "series_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "structures", force: :cascade do |t|
    t.string   "ref"
    t.string   "part_name"
    t.string   "material"
    t.string   "remark"
    t.integer  "num"
    t.integer  "variation"
    t.string   "series_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "country"
    t.string   "profile"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "videos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "content"
    t.string   "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "videos", ["user_id"], name: "index_videos_on_user_id"

  create_table "works", force: :cascade do |t|
    t.string   "bldg_name"
    t.string   "bldg_picture"
    t.string   "bldg_place"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
