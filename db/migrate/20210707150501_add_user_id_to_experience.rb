class AddUserIdToExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :user_id, :interger
    add_index :experiences, :user_id
  end
end
