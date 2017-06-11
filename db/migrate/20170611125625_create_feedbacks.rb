class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|

    	t.string "name",:limit=>255
      	t.string "email",:limit=>255
      	t.string "phonenumber",:limit=>255
      	t.string "title",:limit=>255
		t.text "details",:limit=>255
    	

      t.timestamps
    end
  end
end
