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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130814083453) do

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "hints", :force => true do |t|
    t.string   "x"
    t.string   "y"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "slide_id"
    t.string   "width"
    t.string   "height"
    t.string   "x_full"
    t.string   "y_full"
  end

  create_table "hints_positions", :force => true do |t|
    t.integer  "hint_id"
    t.integer  "position_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "hints_positions", ["hint_id"], :name => "index_hints_positions_on_hint_id"
  add_index "hints_positions", ["position_id"], :name => "index_hints_positions_on_position_id"

  create_table "lines", :force => true do |t|
    t.string   "width"
    t.string   "height"
    t.string   "x"
    t.string   "y"
    t.string   "top"
    t.string   "left"
    t.string   "right"
    t.string   "bottom"
    t.string   "slide_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "x_full"
    t.string   "y_full"
    t.string   "widths"
    t.string   "heights"
  end

  create_table "lines_positions", :force => true do |t|
    t.integer  "line_id"
    t.integer  "position_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "lines_positions", ["line_id"], :name => "index_lines_positions_on_line_id"
  add_index "lines_positions", ["position_id"], :name => "index_lines_positions_on_position_id"

  create_table "nested_hints", :force => true do |t|
    t.string   "x"
    t.string   "y"
    t.integer  "hint_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "width"
    t.string   "height"
    t.string   "radius"
    t.string   "x_full"
    t.string   "y_full"
  end

  create_table "nested_hints_positions", :force => true do |t|
    t.integer  "nested_hint_id"
    t.integer  "position_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "nested_hints_positions", ["nested_hint_id"], :name => "index_nested_hints_positions_on_nested_hint_id"
  add_index "nested_hints_positions", ["position_id"], :name => "index_nested_hints_positions_on_position_id"

# Could not dump table "pages" because of following StandardError
#   Unknown type 'bool' for column 'city_agregation'

  create_table "positions", :force => true do |t|
    t.string   "x"
    t.string   "y"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "properties", :force => true do |t|
    t.integer  "page_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "slides", :force => true do |t|
    t.integer  "page_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
