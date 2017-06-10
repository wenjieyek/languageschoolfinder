class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|

    	t.string "name",:limit=>255
    	t.string "languagetype",:limit=>255
      	t.text "details",:limit=>255
    	t.string "profilepicture",:limit=>255
    	t.string "resumes",:limit=>255
    	
      	#t.integer "course_id"
      	t.integer "school_user_id"

      t.timestamps

     
    end

     #add_index("teachers","course_id")
      add_index("teachers","school_user_id")

      
  end
end
