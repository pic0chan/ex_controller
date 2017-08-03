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

ActiveRecord::Schema.define(version: 20170802145004) do

  create_table "internet_lines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "line_name"
    t.bigint   "vlan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "switch_ports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "switch_id"
    t.string   "port_num"
    t.bigint   "speed"
    t.integer  "internet_line_id"
    t.string   "mode"
    t.boolean  "link_status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["internet_line_id"], name: "index_switch_ports_on_internet_line_id", using: :btree
    t.index ["switch_id", "port_num"], name: "index_switch_ports_on_switch_id_and_port_num", unique: true, using: :btree
    t.index ["switch_id"], name: "index_switch_ports_on_switch_id", using: :btree
  end

  create_table "switches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "hostname"
    t.integer  "manage_ipv4addr",              unsigned: true
    t.string   "config_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "switch_ports", "internet_lines"
  add_foreign_key "switch_ports", "switches"
end
