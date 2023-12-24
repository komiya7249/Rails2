class AddDetalisToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :persons, :integer
    add_column :rooms, :days, :integer
  end
end
