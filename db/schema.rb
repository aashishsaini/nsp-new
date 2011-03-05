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

ActiveRecord::Schema.define(:version => 20110303024909) do

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "name"
    t.string   "description"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "address"
    t.string   "number_of_children"
    t.string   "age"
    t.string   "gender"
    t.string   "number_of_days"
    t.string   "number_of_hours"
    t.string   "max_monthly_budget"
    t.string   "host"
    t.date     "begin_date_for_share"
    t.string   "hours_needed"
    t.string   "edu_of_parent_father"
    t.string   "edu_of_parent_mother"
    t.string   "already_nanny"
    t.string   "religion"
    t.string   "junk_food"
    t.string   "television_viewing"
    t.string   "english_fluency"
    t.string   "foreign_language"
    t.string   "drive_child"
    t.string   "public_transportation"
    t.string   "level_of_experience"
    t.string   "smoker"
    t.string   "cpr_certification"
    t.string   "agree"
    t.integer  "activate_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.string   "facebook_id"
  end

end
