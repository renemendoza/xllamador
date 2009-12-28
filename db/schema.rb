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

ActiveRecord::Schema.define(:version => 20091228052837) do

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistance_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voip_devices", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "type",          :default => "friend"
    t.string   "host",          :default => "dynamic"
    t.string   "secret"
    t.string   "disallow",      :default => "all"
    t.string   "allow",         :default => "ulaw"
    t.string   "callerid"
    t.string   "callerid_name"
    t.string   "context",       :default => "default"
    t.string   "accountcode",   :default => "default"
    t.string   "dtmfmode",      :default => "rfc2833"
    t.string   "language",      :default => "en"
    t.string   "qualify",       :default => "yes"
    t.string   "technology",    :default => "sip"
    t.string   "ipaddr"
    t.string   "port"
    t.integer  "regseconds"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_trunk",      :default => false
    t.string   "nat",           :default => "no"
    t.string   "canreinvite",   :default => "no"
  end

end
