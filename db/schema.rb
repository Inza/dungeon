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

ActiveRecord::Schema.define(version: 20150925182614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "actors", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "offer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actors", ["offer_id"], name: "index_actors_on_offer_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "attachments", force: true do |t|
    t.string   "name"
    t.string   "content_type"
    t.string   "file"
    t.integer  "offer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachments", ["offer_id"], name: "index_attachments_on_offer_id", using: :btree

  create_table "budgets", force: true do |t|
    t.string   "state"
    t.datetime "state_changed_at"
    t.integer  "offer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "budgets", ["offer_id"], name: "index_budgets_on_offer_id", using: :btree
  add_index "budgets", ["user_id"], name: "index_budgets_on_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "user_story_id"
    t.integer  "budget_id"
    t.integer  "offer_id"
    t.integer  "project_id"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["budget_id"], name: "index_comments_on_budget_id", using: :btree
  add_index "comments", ["invoice_id"], name: "index_comments_on_invoice_id", using: :btree
  add_index "comments", ["offer_id"], name: "index_comments_on_offer_id", using: :btree
  add_index "comments", ["project_id"], name: "index_comments_on_project_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree
  add_index "comments", ["user_story_id"], name: "index_comments_on_user_story_id", using: :btree

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "events", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "budget_id"
    t.integer  "message_type"
    t.string   "text"
    t.integer  "content_type"
    t.string   "value"
    t.integer  "offer_id"
    t.integer  "user_story_evaluation_id"
    t.integer  "user_story_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["budget_id"], name: "index_events_on_budget_id", using: :btree
  add_index "events", ["offer_id"], name: "index_events_on_offer_id", using: :btree
  add_index "events", ["project_id"], name: "index_events_on_project_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree
  add_index "events", ["user_story_evaluation_id"], name: "index_events_on_user_story_evaluation_id", using: :btree
  add_index "events", ["user_story_id"], name: "index_events_on_user_story_id", using: :btree

  create_table "invoices", force: true do |t|
    t.string   "state"
    t.datetime "state_changed_at"
    t.integer  "cost"
    t.integer  "project_id"
    t.integer  "user_id"
    t.integer  "budget_id"
    t.date     "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["budget_id"], name: "index_invoices_on_budget_id", using: :btree
  add_index "invoices", ["project_id"], name: "index_invoices_on_project_id", using: :btree
  add_index "invoices", ["user_id"], name: "index_invoices_on_user_id", using: :btree

  create_table "offers", force: true do |t|
    t.integer  "project_id"
    t.text     "why"
    t.text     "how"
    t.text     "what"
    t.integer  "user_id"
    t.integer  "actor_id"
    t.string   "name"
    t.integer  "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offers", ["actor_id"], name: "index_offers_on_actor_id", using: :btree
  add_index "offers", ["project_id"], name: "index_offers_on_project_id", using: :btree
  add_index "offers", ["user_id"], name: "index_offers_on_user_id", using: :btree

  create_table "project_memberships", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "team_role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_memberships", ["project_id"], name: "index_project_memberships_on_project_id", using: :btree
  add_index "project_memberships", ["team_role_id"], name: "index_project_memberships_on_team_role_id", using: :btree
  add_index "project_memberships", ["user_id"], name: "index_project_memberships_on_user_id", using: :btree

  create_table "projects", force: true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["team_id"], name: "index_projects_on_team_id", using: :btree

  create_table "requirements", force: true do |t|
    t.integer  "offer_id"
    t.string   "name"
    t.text     "description"
    t.integer  "requirement_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requirements", ["offer_id"], name: "index_requirements_on_offer_id", using: :btree

  create_table "team_memberships", force: true do |t|
    t.integer  "user_role_id"
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_memberships", ["team_id"], name: "index_team_memberships_on_team_id", using: :btree
  add_index "team_memberships", ["user_id"], name: "index_team_memberships_on_user_id", using: :btree
  add_index "team_memberships", ["user_role_id"], name: "index_team_memberships_on_user_role_id", using: :btree

  create_table "team_roles", force: true do |t|
    t.string   "name"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "invoicing_id_number"
    t.string   "invoicing_company_name"
    t.string   "invoicing_email"
    t.string   "invoicing_contact_person_first_name"
    t.string   "invoicing_contact_person_last_name"
    t.string   "invoicing_company_website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: true do |t|
    t.string   "name"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_stories", force: true do |t|
    t.integer  "offer_id"
    t.integer  "actor_id"
    t.string   "name"
    t.string   "desire"
    t.string   "world_change"
    t.string   "note"
    t.integer  "user_story_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_stories", ["actor_id"], name: "index_user_stories_on_actor_id", using: :btree
  add_index "user_stories", ["offer_id"], name: "index_user_stories_on_offer_id", using: :btree
  add_index "user_stories", ["user_story_category_id"], name: "index_user_stories_on_user_story_category_id", using: :btree

  create_table "user_story_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_story_evaluations", force: true do |t|
    t.integer  "user_id"
    t.integer  "budget_id"
    t.integer  "user_story_id"
    t.integer  "team_role_id"
    t.integer  "points"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_story_evaluations", ["budget_id"], name: "index_user_story_evaluations_on_budget_id", using: :btree
  add_index "user_story_evaluations", ["team_role_id"], name: "index_user_story_evaluations_on_team_role_id", using: :btree
  add_index "user_story_evaluations", ["user_id"], name: "index_user_story_evaluations_on_user_id", using: :btree
  add_index "user_story_evaluations", ["user_story_id"], name: "index_user_story_evaluations_on_user_story_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.integer  "offer_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["offer_id"], name: "index_users_on_offer_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
