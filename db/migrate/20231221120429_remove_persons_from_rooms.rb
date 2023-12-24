class RemovePersonsFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :persons, :integer
  end
end
