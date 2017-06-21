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

ActiveRecord::Schema.define(version: 20170621115919) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "areaname"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_areas_on_state_id"
  end

  create_table "certificates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "details"
    t.string "attachment"
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_certificates_on_school_user_id"
  end

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "languagetype"
    t.text "details"
    t.string "price"
    t.string "attachments"
    t.string "time"
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_courses_on_school_user_id"
  end

  create_table "feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "phonenumber"
    t.string "title"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsfeeds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "details"
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_newsfeeds_on_school_user_id"
  end

  create_table "promotions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "details"
    t.string "attachments"
    t.string "period"
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_promotions_on_school_user_id"
  end

  create_table "school_attachments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "directory"
    t.string "attachmenttype"
    t.text "description"
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_school_attachments_on_school_user_id"
  end

  create_table "school_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.string "phonenumber"
    t.string "website"
    t.text "address"
    t.text "city"
    t.text "state"
    t.text "postcode"
    t.text "description"
    t.text "transportation"
    t.text "profilepicture"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "languagetype"
    t.text "details"
    t.string "profilepicture"
    t.string "resumes"
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_teachers_on_school_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "address"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
