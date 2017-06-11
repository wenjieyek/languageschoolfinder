class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|

    	t.string "username",:limit=>255
    	t.string "password_digest",:limit=>255

      t.timestamps
    end
  end
end
