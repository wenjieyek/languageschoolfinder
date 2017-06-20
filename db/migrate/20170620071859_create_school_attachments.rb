class CreateSchoolAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :school_attachments do |t|

    	t.string "directory",:limit=>255
    	t.string "attachmenttype",:limit=>255
    	t.text "description"
    	t.integer "school_user_id"

      t.timestamps
    end


    add_index("school_attachments","school_user_id")


  end
end
