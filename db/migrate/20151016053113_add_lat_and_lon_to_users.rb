class AddLatAndLonToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lat, :float
    add_column :users, :lon, :float
    add_column :users, :address, :string
    add_attachment :users, :avatar
  end
end
