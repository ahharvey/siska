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

ActiveRecord::Schema.define(:version => 20111204135039) do

  create_table "boat_sizes", :force => true do |t|
    t.string   "size"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elfours", :force => true do |t|
    t.integer  "district_id"
    t.integer  "year"
    t.integer  "quarter"
    t.integer  "fish_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fish", :force => true do |t|
    t.string   "code"
    t.string   "nat_nm"
    t.string   "loc_nm"
    t.string   "family"
    t.string   "eng_nm"
    t.string   "lat_nm"
    t.integer  "sector_id"
    t.integer  "water_id"
    t.integer  "category_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gear_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gears", :force => true do |t|
    t.string   "name"
    t.integer  "gear_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "import_cells", :force => true do |t|
    t.integer  "import_table_id"
    t.integer  "row_index"
    t.integer  "column_index"
    t.string   "contents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "import_cells", ["import_table_id"], :name => "index_import_cells_on_import_table_id"

  create_table "import_tables", :force => true do |t|
    t.string   "original_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landing_centers", :force => true do |t|
    t.string   "name"
    t.integer  "sdistrict_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.integer  "sdistrict_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sdistricts", :force => true do |t|
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slfive_fishes", :force => true do |t|
    t.integer  "Slfive_id"
    t.integer  "fish_id"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slfives", :force => true do |t|
    t.integer  "landing_center_id"
    t.date     "date"
    t.integer  "gear_id"
    t.string   "serialno"
    t.boolean  "sampled"
    t.integer  "wt_dealer"
    t.integer  "wt_consumed"
    t.integer  "wt_crew"
    t.integer  "wt_others"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slfours", :force => true do |t|
    t.date     "date"
    t.integer  "LandingCenter_id"
    t.integer  "Gear_id"
    t.integer  "interval"
    t.string   "SerialNo"
    t.string   "BoatName"
    t.integer  "BoatSize_id"
    t.boolean  "sampled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slsixes", :force => true do |t|
    t.integer  "village_id"
    t.integer  "year"
    t.integer  "quarter"
    t.integer  "gear_id"
    t.integer  "boat_size_id"
    t.integer  "units"
    t.string   "month"
    t.integer  "trips"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "position_id"
    t.integer  "office_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "villages", :force => true do |t|
    t.string   "name"
    t.integer  "sdistrict_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
