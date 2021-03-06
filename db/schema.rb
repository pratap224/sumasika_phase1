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

ActiveRecord::Schema.define(version: 20150328125217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aboutconttents", force: true do |t|
    t.string   "content"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "titleone"
    t.string   "titletwo"
    t.string   "titlethree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: true do |t|
    t.string   "mask"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: true do |t|
    t.integer  "synthesize_id"
    t.string   "customer_id"
    t.string   "event_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "experts", force: true do |t|
    t.string   "name"
    t.string   "designation"
    t.text     "description"
    t.string   "image_uid"
    t.string   "image_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "managers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "country"
    t.text     "address"
    t.datetime "dob"
    t.boolean  "active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "synthesizes", force: true do |t|
    t.string   "tokener"
    t.string   "mtn"
    t.float    "money"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "status"
    t.string   "currency"
    t.string   "code"
    t.boolean  "apply_charges"
    t.float    "rate"
  end

  create_table "trusteds", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.text     "description"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "country"
    t.text     "address"
    t.datetime "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role"
    t.string   "postalcode"
    t.string   "token"
    t.integer  "active"
    t.string   "image_uid"
    t.string   "image_name"
  end

end
