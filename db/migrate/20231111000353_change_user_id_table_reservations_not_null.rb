class ChangeUserIdTableReservationsNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column :reservations, :user_id, :bigint, null: false
  end
end
