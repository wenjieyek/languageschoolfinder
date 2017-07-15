class CreateOnlineApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :online_applications do |t|

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

    	t.integer "status",:default=>0

    	t.integer "school_user_id"



      t.timestamps
    end

    	add_index("online_applications","school_user_id")
  end
end
	