class AddImgToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :img, :varchar
  end
end
