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

ActiveRecord::Schema.define(version: 20151201015046) do

  create_table "administrators", force: :cascade do |t|
    t.string   "id_number",  limit: 255
    t.integer  "user_id",    limit: 4
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "administrators", ["user_id"], name: "index_administrators_on_user_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "id_number",    limit: 255
    t.integer  "user_id",      limit: 4
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.string   "mobile_phone", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "clients", ["user_id"], name: "index_clients_on_user_id", using: :btree

  create_table "drivers", force: :cascade do |t|
    t.string   "license",    limit: 255
    t.integer  "user_id",    limit: 4
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "class",      limit: 255
    t.string   "category",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "drivers", ["user_id"], name: "index_drivers_on_user_id", using: :btree

  create_table "estado_servicios", force: :cascade do |t|
    t.integer  "IdEstadoServicio", limit: 4
    t.text     "Descripcion",      limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "client_id",   limit: 4
    t.string   "source",      limit: 255
    t.string   "destination", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "favorites", ["client_id"], name: "index_favorites_on_client_id", using: :btree

  create_table "parameters", force: :cascade do |t|
    t.string   "description", limit: 255
    t.string   "value",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "parametros", force: :cascade do |t|
    t.integer  "IdParametro",      limit: 4
    t.text     "Placa",            limit: 65535
    t.date     "FechaVenceSoat"
    t.date     "FechaVenceRevTec"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.datetime "born_at"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "service_states", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "client_id",        limit: 4
    t.integer  "driver_id",        limit: 4
    t.integer  "vehicle_id",       limit: 4
    t.integer  "payment_type_id",  limit: 4
    t.string   "source",           limit: 255
    t.string   "destination",      limit: 255
    t.datetime "date_hour"
    t.integer  "service_state_id", limit: 4
    t.integer  "score",            limit: 4
    t.text     "comment",          limit: 65535
    t.decimal  "amount",                         precision: 10
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "services", ["client_id"], name: "index_services_on_client_id", using: :btree
  add_index "services", ["driver_id"], name: "index_services_on_driver_id", using: :btree
  add_index "services", ["payment_type_id"], name: "index_services_on_payment_type_id", using: :btree
  add_index "services", ["service_state_id"], name: "index_services_on_service_state_id", using: :btree
  add_index "services", ["vehicle_id"], name: "index_services_on_vehicle_id", using: :btree

  create_table "tipo_pagos", force: :cascade do |t|
    t.string   "CodigoTipoPago", limit: 255
    t.text     "Descripcion",    limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "plaque",                    limit: 255
    t.date     "soat_due_date"
    t.date     "technical_review_due_date"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "vehiculos", force: :cascade do |t|
    t.integer  "IdVehiculo",       limit: 4
    t.text     "Placa",            limit: 65535
    t.date     "FechaVenceSoat"
    t.date     "FechaVenceRevTec"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_foreign_key "administrators", "users"
  add_foreign_key "clients", "users"
  add_foreign_key "drivers", "users"
  add_foreign_key "favorites", "clients"
  add_foreign_key "profiles", "users"
  add_foreign_key "services", "clients"
  add_foreign_key "services", "drivers"
  add_foreign_key "services", "payment_types"
  add_foreign_key "services", "service_states"
  add_foreign_key "services", "vehicles"
end
