class AlterAreas < ActiveRecord::Migration[5.1]
  def change
  	add_index("areas","state_id")
  end
end
