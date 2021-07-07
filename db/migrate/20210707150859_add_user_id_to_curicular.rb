class AddUserIdToCuricular < ActiveRecord::Migration[6.1]
  def change
    add_column :curiculars, :user_id, :integer
    add_index :curiculars, :user_id
  end
end
