class CreateWeekdays < ActiveRecord::Migration[7.1]
  def change
    create_table :weekdays do |t|
      t.string :name, :null => false
      t.timestamps
    end
  end
end
