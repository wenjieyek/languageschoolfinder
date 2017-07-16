class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|

    	t.integer "school_user_id"
    	t.integer "user_id"
      t.string "school_name"

      t.timestamps
    end

    	add_index("bookmarks","school_user_id")
    	add_index("bookmarks","user_id")
    	
  end
end
