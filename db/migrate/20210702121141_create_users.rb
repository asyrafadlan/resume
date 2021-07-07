class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name_string
      t.string :address
      t.string :birthday
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
