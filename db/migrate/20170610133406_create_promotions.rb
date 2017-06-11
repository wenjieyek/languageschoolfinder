class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|

     	t.string "name",:limit=>255
      	t.text "details"
    	t.string "attachments",:limit=>255
    	t.string "period",:limit=>255
    	
      	#t.integer "course_id"
      	t.integer "school_user_id"

      t.timestamps

     
    end

     #add_index("teachers","course_id")
      add_index("promotions","school_user_id")

      
  end
end
