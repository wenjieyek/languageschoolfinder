class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|

    	t.string "areaname",:limit=>255
      	t.integer "state_id"

      t.timestamps
    end
  end
end
