class AddPosterToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :poster, :string
  end
end
