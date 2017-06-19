class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|

    	t.string "areaname",:limit=>255
      	t.string "subregion",:limit=>255	

      t.timestamps
    end
  end
end
