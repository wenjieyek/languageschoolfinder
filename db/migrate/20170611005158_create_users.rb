class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string "username",:limit=>255
    	t.string "password_digest",:limit=>255
    	t.string "email",:limit=>255
    	t.string "address",:limit=>255
    	t.integer "status",:default=>1


      t.timestamps
    end
  end
end
