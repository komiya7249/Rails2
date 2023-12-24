class RemovePosterFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :poster, :string
  end
end
