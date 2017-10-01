class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|

    	t.integer "day"
    	t.time "start"
    	t.time "end"
      t.integer "course_id"

      t.timestamps
    end

    add_index("timetables","course_id")

  end
end
