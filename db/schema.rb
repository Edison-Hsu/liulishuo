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

ActiveRecord::Schema.define(version: 20160814065709) do

  create_table "contacts", force: :cascade do |t|
    t.integer  "owner",      null: false
    t.integer  "contacter",  null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at", "owner"], name: "index_contacts_on_deleted_at_and_owner"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id",                null: false
    t.integer  "receiver_id",              null: false
    t.string   "content",     limit: 1024
    t.datetime "deleted_at"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["deleted_at", "receiver_id", "sender_id", "created_at"], name: "index2"
    t.index ["deleted_at", "sender_id", "receiver_id", "created_at"], name: "index1"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
