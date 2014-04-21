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

ActiveRecord::Schema.define(version: 20140421171909) do

  create_table "institutions", force: true do |t|
    t.string   "institution_name"
    t.string   "location"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medications", force: true do |t|
    t.integer  "patient_id"
    t.string   "medication_name"
    t.text     "description"
    t.string   "amount_dispensed"
    t.string   "frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.integer  "institution_id"
    t.string   "name"
    t.string   "workflow_state"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end