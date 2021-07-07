class CreateCuriculars < ActiveRecord::Migration[6.1]
  def change
    create_table :curiculars do |t|
      t.string :year
      t.string :activity

      t.timestamps
    end
  end
end
