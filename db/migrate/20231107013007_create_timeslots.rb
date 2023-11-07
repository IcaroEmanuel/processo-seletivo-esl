class CreateTimeslots < ActiveRecord::Migration[7.1]
  def change
    create_table :timeslots do |t|
      t.time :start_time, :null => false
      t.time :end_time, :null => false
      t.timestamps
    end
  end
end
