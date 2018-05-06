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

ActiveRecord::Schema.define(version: 20180506150707) do

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["project_id"], name: "index_comments_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "description"
    t.string   "city"
    t.string   "state"
    t.string   "genre"
    t.string   "equipment"
    t.string   "needed_equipment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "projects_tags", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "tag_id",     null: false
  end

  add_index "projects_tags", ["project_id"], name: "index_projects_tags_on_project_id"
  add_index "projects_tags", ["tag_id"], name: "index_projects_tags_on_tag_id"

  create_table "projects_users", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "user_id",    null: false
  end

  add_index "projects_users", ["project_id"], name: "index_projects_users_on_project_id"
  add_index "projects_users", ["user_id"], name: "index_projects_users_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "role"
    t.string   "equipment"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
