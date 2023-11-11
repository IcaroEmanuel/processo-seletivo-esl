class ChangeRoomIdTableReservationsNullTrue < ActiveRecord::Migration[7.1]
  def change
    execute <<-SQL
      UPDATE reservations
      SET room_id = 0
      WHERE room_id IS NULL
    SQL

    change_column :reservations, :room_id, :bigint, null: true
  end
end
