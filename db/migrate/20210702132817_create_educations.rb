class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :year
      t.string :institution
      t.string :achievement

      t.timestamps
    end
  end
end
