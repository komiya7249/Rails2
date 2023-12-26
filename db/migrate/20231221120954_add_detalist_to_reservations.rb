class AddDetalistToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :persons, :integer
    add_column :reservations, :days, :integer
  end
end
