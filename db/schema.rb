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

ActiveRecord::Schema.define(:version => 20111015015434) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_descriptions", :force => true do |t|
    t.integer  "area_id"
    t.string   "short_desc"
    t.text     "desc"
    t.integer  "release_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", :force => true do |t|
    t.integer  "city_id"
    t.string   "name"
    t.integer  "sort"
    t.integer  "release_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "short_desc"
    t.text     "desc"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "sort"
    t.integer  "release_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "city_settings", :force => true do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cuisines", :force => true do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", :force => true do |t|
    t.integer  "city_id",         :default => 1
    t.integer  "area_id"
    t.string   "name"
    t.string   "short_desc"
    t.text     "desc"
    t.string   "address"
    t.integer  "map_id"
    t.string   "phone"
    t.string   "email"
    t.string   "web"
    t.string   "rooms"
    t.integer  "price"
    t.string   "inclusions"
    t.string   "check_in"
    t.text     "amenities",       :default => "Complimentary Wi-Fi ($25 per day), flatscreen TV, DVD, CD player, iPod dock, minibar, air conditioning, brand-name toiletries"
    t.text     "facilities"
    t.text     "restaurants"
    t.string   "bars"
    t.string   "kids"
    t.text     "ideal_for"
    t.text     "think_twice"
    t.integer  "sort"
    t.integer  "release_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price_to"
    t.integer  "category_id"
    t.string   "price_comment"
    t.boolean  "villa"
    t.integer  "city_setting_id"
    t.integer  "style_id"
    t.boolean  "hotel",           :default => true
    t.float    "latitude"
    t.float    "longitude"
    t.string   "directions"
    t.string   "ext_hotel_id"
    t.text     "notes"
    t.string   "minimum_room"
    t.string   "minimum_nights"
    t.text     "executive_club"
  end

  create_table "hotels_interests", :id => false, :force => true do |t|
    t.integer "hotel_id"
    t.integer "interest_id"
  end

  create_table "hotels_sojourn_settings", :id => false, :force => true do |t|
    t.integer "hotel_id"
    t.integer "sojourn_setting_id"
  end

  create_table "interests", :force => true do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.string   "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_histories_on_item_and_table_and_month_and_year"

  create_table "reservations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", :force => true do |t|
    t.integer  "city_id",        :default => 1
    t.string   "name"
    t.string   "short_desc"
    t.text     "desc"
    t.string   "address"
    t.integer  "area_id"
    t.integer  "map_id"
    t.string   "phone"
    t.string   "email"
    t.string   "web"
    t.integer  "cuisine_id"
    t.integer  "rating"
    t.integer  "price"
    t.string   "hours"
    t.integer  "reservation_id"
    t.string   "wine"
    t.string   "seats"
    t.string   "kid_id"
    t.string   "vegetarian"
    t.integer  "sort"
    t.integer  "release_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "s3_files", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sojourn_settings", :force => true do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
