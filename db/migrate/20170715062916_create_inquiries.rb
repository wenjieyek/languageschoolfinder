class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|

    	t.string "name"
    	t.string "email"
    	t.string "course"
    	t.text "title"
    	t.text "details"

      t.integer "status",:default=>0




    	t.integer "school_user_id"

      t.timestamps
    end

    add_index("inquiries","school_user_id")
  end
end
