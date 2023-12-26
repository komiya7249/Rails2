class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :room_id
      t.integer :total_price
      t.datetime :check_in_at
      t.datetime :check_out_at

      t.timestamps
    end
  end
end
