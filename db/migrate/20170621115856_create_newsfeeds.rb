class CreateNewsfeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :newsfeeds do |t|

    	t.string "title"
      	t.text "details"
    	
      	t.integer "school_user_id"



      t.timestamps
    end

     add_index("newsfeeds","school_user_id")


  end
end
