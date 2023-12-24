class RemoveDaysFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :days, :integer
  end
end
