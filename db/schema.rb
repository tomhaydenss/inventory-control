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

ActiveRecord::Schema.define(version: 20160909213004) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street",           limit: 255
    t.integer  "addressable_id",   limit: 4
    t.string   "addressable_type", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "addresses", ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "main_category_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "categories", ["main_category_id"], name: "index_categories_on_main_category_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "area",         limit: 255
    t.string   "position",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "warehouse_id", limit: 4
  end

  add_index "locations", ["warehouse_id"], name: "index_locations_on_warehouse_id", using: :btree

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "manufacturer_id", limit: 4
    t.integer  "location_id",     limit: 4
    t.integer  "category_id",     limit: 4
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["location_id"], name: "index_products_on_location_id", using: :btree
  add_index "products", ["manufacturer_id"], name: "index_products_on_manufacturer_id", using: :btree

  create_table "products_specifications", id: false, force: :cascade do |t|
    t.integer "product_id",       limit: 4, null: false
    t.integer "specification_id", limit: 4, null: false
  end

  create_table "quotations", force: :cascade do |t|
    t.integer  "price",       limit: 4
    t.integer  "product_id",  limit: 4
    t.integer  "supplier_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "quotations", ["product_id"], name: "index_quotations_on_product_id", using: :btree
  add_index "quotations", ["supplier_id"], name: "index_quotations_on_supplier_id", using: :btree

  create_table "specifications", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "value",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "type",       limit: 255
  end

  create_table "warehouses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "locations", "warehouses"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "locations"
  add_foreign_key "products", "manufacturers"
  add_foreign_key "quotations", "products"
  add_foreign_key "quotations", "suppliers"
end
