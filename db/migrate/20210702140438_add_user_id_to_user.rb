class AddUserIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_id, :interger
    add_index :users, :user_id
  end
end
