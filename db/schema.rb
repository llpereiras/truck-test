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

ActiveRecord::Schema.define(version: 20171005172609) do

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "phone"
  end

  create_table "contacts_truckers", force: :cascade do |t|
    t.integer "contact_id"
    t.integer "trucker_id"
    t.index ["contact_id"], name: "index_contacts_truckers_on_contact_id"
    t.index ["trucker_id"], name: "index_contacts_truckers_on_trucker_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.date "deliver_at"
  end

  create_table "origins", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.date "load_at"
  end

  create_table "shipments", force: :cascade do |t|
    t.decimal "value", precision: 10, scale: 2
    t.integer "weight_kg"
    t.integer "contact_id"
    t.integer "origin_id"
    t.integer "destination_id"
    t.index ["contact_id"], name: "index_shipments_on_contact_id"
    t.index ["destination_id"], name: "index_shipments_on_destination_id"
    t.index ["origin_id"], name: "index_shipments_on_origin_id"
  end

  create_table "shipments_truckers", force: :cascade do |t|
    t.integer "shipment_id"
    t.integer "trucker_id"
    t.index ["shipment_id"], name: "index_shipments_truckers_on_shipment_id"
    t.index ["trucker_id"], name: "index_shipments_truckers_on_trucker_id"
  end

  create_table "truckers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.integer "type"
    t.integer "body_type"
    t.integer "origin_id"
    t.index ["origin_id"], name: "index_truckers_on_origin_id"
  end

end
