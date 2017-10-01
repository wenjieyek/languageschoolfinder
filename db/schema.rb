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

ActiveRecord::Schema.define(version: 20170914041955) do

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

  create_table "bookmarks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "school_user_id"
    t.integer "user_id"
    t.string "school_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_bookmarks_on_school_user_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
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

  create_table "inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "course"
    t.text "title"
    t.text "details"
    t.integer "status", default: 0
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_inquiries_on_school_user_id"
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

  create_table "online_applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "intakedate"
    t.string "course"
    t.string "profilepicture"
    t.string "email"
    t.string "name"
    t.string "ic"
    t.string "gender"
    t.string "nationality"
    t.integer "age"
    t.string "phonenumber"
    t.text "address"
    t.integer "status", default: 0
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_online_applications_on_school_user_id"
  end

  create_table "promotions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "details"
    t.string "attachments"
    t.date "start"
    t.date "end"
    t.integer "school_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_promotions_on_school_user_id"
  end

  create_table "ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "courses"
    t.integer "value"
    t.integer "facilities"
    t.integer "service"
    t.integer "activities"
    t.string "coursename"
    t.string "title"
    t.text "comments"
    t.integer "school_user_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_user_id"], name: "index_ratings_on_school_user_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
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
    t.text "location"
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

  create_table "timetables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "day"
    t.time "start"
    t.time "end"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_timetables_on_course_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "address"
    t.string "profilepicture"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
