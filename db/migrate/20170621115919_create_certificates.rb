class CreateCertificates < ActiveRecord::Migration[5.1]
  def change
    create_table :certificates do |t|

    	t.string "title"
      	t.text "details"
      	t.string "attachment"
    	
      	t.integer "school_user_id"




      t.timestamps
    end

     add_index("certificates","school_user_id")
  end
end
