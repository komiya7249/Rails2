class ChangeDatetypePosterOfRooms < ActiveRecord::Migration[6.1]
  def up
    change_column :rooms, :poster, :integer
  end
end
