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

ActiveRecord::Schema.define(version: 20130809131132) do

  create_table "biographies", force: true do |t|
    t.string   "name"
    t.string   "geburtsname"
    t.datetime "verlegedatum"
    t.datetime "geburtstag"
    t.string   "geburtsort"
    t.text     "biografie"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "locations", force: true do |t|
    t.string   "bezirk"
    t.string   "ortsteil"
    t.string   "adresse"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "lnglat",     limit: {:srid=>4326, :type=>"point", :geographic=>true}
  end

  add_index "locations", ["lnglat"], :name => "index_locations_on_lnglat", :spatial => true

end
