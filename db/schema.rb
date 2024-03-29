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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130531081049) do

  create_table "contents", :force => true do |t|
    t.string   "content"
    t.integer  "status"
    t.string   "area_code"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "weather_code"
    t.string   "cityname"
  end

  create_table "locations", :force => true do |t|
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "city_code"
    t.string   "area_code"
  end

  create_table "tasks", :force => true do |t|
    t.string   "city"
    t.string   "weather_info"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "area_code"
    t.integer  "status"
    t.string   "city_code"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "mobile_number"
    t.string   "location"
    t.integer  "sex"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.date     "subscrip_time"
    t.date     "quit_time"
    t.string   "area_code"
  end

  create_table "weather_forcasts", :force => true do |t|
    t.string   "city"
    t.string   "temperature"
    t.string   "wind"
    t.string   "weather"
    t.string   "wind_level"
    t.string   "index"
    t.string   "date"
    t.string   "week"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
