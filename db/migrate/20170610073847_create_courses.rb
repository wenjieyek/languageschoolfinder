class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
    	t.string "name",:limit=>255
    	t.string "languagetype",:limit=>255
      t.text "details"
    	t.string "price",:limit=>255
    	t.string "attachments",:limit=>255
    	#t.string "time",:limit=>255
      t.integer "school_user_id"
    	
    	

      t.timestamps
    end

    add_index("courses","school_user_id")
  end
end
