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

ActiveRecord::Schema.define(version: 20140923042845) do

  create_table "ideas", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "avg_score"
    t.integer  "high_score"
    t.integer  "low_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.string   "image"
  end

  create_table "mashes", force: true do |t|
    t.integer  "durability"
    t.integer  "efficiency"
    t.integer  "assembly"
    t.integer  "proportion"
    t.integer  "scale"
    t.integer  "semantics"
    t.integer  "lifespan"
    t.integer  "recycle"
    t.integer  "process"
    t.integer  "learning_curve"
    t.integer  "barriers"
    t.integer  "safety"
    t.integer  "pleasure"
    t.integer  "technology"
    t.integer  "function"
    t.integer  "parts"
    t.integer  "service"
    t.integer  "access"
    t.integer  "precedent"
    t.integer  "appropriate"
    t.integer  "branding"
    t.integer  "graphics"
    t.integer  "user_id"
    t.integer  "idea_id"
    t.integer  "total_mash"
    t.integer  "total_mechanics"
    t.integer  "total_aesthetics"
    t.integer  "total_sustainability"
    t.integer  "total_human_factors"
    t.string   "link"
    t.string   "name"
    t.string   "download_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "description"
    t.boolean  "private"
    t.integer  "owner_id"
    t.integer  "user_id"
    t.string   "image"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "avatar"
    t.integer  "plan_id",                default: 1
    t.string   "provider_id"
    t.string   "uid"
    t.string   "location"
    t.string   "provider"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
