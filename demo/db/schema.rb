# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100501075315) do

  create_table "acts", :force => true do |t|
    t.date     "plandate"
    t.string   "dcfcode"
    t.string   "drfcode"
    t.string   "itemcode"
    t.string   "acttypecode"
    t.date     "visitdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "acttypes", :force => true do |t|
    t.string   "acttypecode"
    t.string   "acttypename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dcfs", :force => true do |t|
    t.string   "dcfcode"
    t.string   "dcfname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drves", :force => true do |t|
    t.string   "drfcode"
    t.string   "drfname"
    t.string   "dcfcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "itemcode"
    t.string   "itemname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
