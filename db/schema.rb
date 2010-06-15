# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100615111811) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "idea_id",    :null => false
    t.text     "comment",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ideas", :force => true do |t|
    t.integer  "user_id",                    :null => false
    t.string   "title",                      :null => false
    t.text     "description",                :null => false
    t.integer  "rating",      :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "idea_id",    :null => false
    t.integer  "rating",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password",   :limit => 40
    t.string   "full_name",                :null => false
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
