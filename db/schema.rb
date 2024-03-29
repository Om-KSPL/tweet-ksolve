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

ActiveRecord::Schema.define(version: 20140902120058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "edb_dblink_libpq"
  enable_extension "edb_dblink_oci"
  enable_extension "pldbgapi"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "GMT_Formula"
    t.string   "country"
    t.float    "lat"
    t.float    "long"
    t.string   "timezone"
    t.float    "time_diff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "login",            null: false
    t.string   "perishable_token"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "nickname"
    t.string   "oauth_token",      null: false
    t.string   "oauth_secret",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
