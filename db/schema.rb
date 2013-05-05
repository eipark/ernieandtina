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

ActiveRecord::Schema.define(:version => 20130430004917) do

  create_table "deleteme", :id => false, :force => true do |t|
    t.integer "id",   :limit => 8, :null => false
    t.string  "name"
  end

  create_table "guests", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "rsvp_code",         :limit => 5
    t.boolean  "rsvp"
    t.string   "comment",           :limit => 2000
    t.integer  "plus_one"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "food_choice"
    t.string   "allergies",         :limit => 2000
    t.string   "song_suggestion",   :limit => 2000
    t.string   "custom_guest_text", :limit => 2000
    t.string   "nick_name",         :limit => 2000
  end

  add_index "guests", ["rsvp_code"], :name => "index_guests_on_rsvp_code", :unique => true

end
