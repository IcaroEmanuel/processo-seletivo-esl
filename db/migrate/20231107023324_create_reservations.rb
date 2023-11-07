class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: true, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.references :weekday, null: false, foreign_key: true
      t.references :timeslot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
