class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|


        t.float "marks"
    	t.float "courses"
    	t.float "value"
    	t.float "facilities"
    	t.float "service"
    	t.float "activities"
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
