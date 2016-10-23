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

ActiveRecord::Schema.define(version: 20161022043421) do

  create_table "assistance_providers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.string  "email"
    t.string  "street_address"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.float   "lat",                             limit: 24
    t.float   "lng",                             limit: 24
    t.string  "max_monthly_contribution"
    t.string  "available_monthly_contribution"
    t.integer "user_id"
    t.integer "qualified_need_id"
    t.integer "successfully_funded_needs_count",            default: 0
  end

  create_table "care_coordinators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.string  "email"
    t.integer "user_id"
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "street_address"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.float   "lat",            limit: 24
    t.float   "lng",            limit: 24
    t.string  "notes"
    t.string  "event_type"
    t.string  "date_of_event"
    t.integer "user_id"
    t.string  "resolution"
  end

  create_table "qualified_needs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "total_needed"
    t.string  "point_of_contact"
    t.string  "phone"
    t.string  "deadline"
    t.string  "street_address"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.float   "lat",                  limit: 24
    t.float   "lng",                  limit: 24
    t.string  "notes"
    t.boolean "funded",                          default: false
    t.integer "number_of_rejections",            default: 0
    t.integer "user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.string "password_hash"
  end

end
