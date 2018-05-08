class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :avatar, :string
    add_column :users, :location, :string
    add_column :users, :users_index, :integer
  end
end
