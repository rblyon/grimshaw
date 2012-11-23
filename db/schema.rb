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

ActiveRecord::Schema.define(:version => 20121123151925) do

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.integer  "bitrate"
    t.string   "codec"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "map_pid"
    t.integer  "map_revision"
    t.text     "description"
    t.string   "format"
    t.string   "framerate"
    t.string   "height"
    t.string   "asset_type"
    t.string   "mime_type"
    t.integer  "video_bitrate"
    t.string   "video_mode"
    t.string   "width"
    t.integer  "audio_bitrate"
    t.string   "audio_codec"
    t.string   "audio_mode"
    t.string   "map_link"
    t.string   "video_bitrate_mode"
  end

end
