class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|

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

      t.timestamps
    end

    add_index("ratings","school_user_id")
    add_index("ratings","user_id")

  end
end
