class AddUserIdToEducation < ActiveRecord::Migration[6.1]
  def change
    add_column :educations, :user_id, :integer
    add_index :educations, :user_id
  end
end
