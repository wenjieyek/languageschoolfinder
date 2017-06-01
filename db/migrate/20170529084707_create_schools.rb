class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|

    	t.string "name",:limit=>255
    	t.string "password_digest",:limit=>255
    	t.string "email",:limit=>255
    	t.string "phonenumber",:limit=>255
    	t.string "website",:limit=>255
    	t.text "address"
    	t.text "description"
    	t.text "transportation"
    	t.text "profilepicture"
    	t.integer "status",:default=>1



      t.timestamps
    end
  end
end
