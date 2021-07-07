class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :year
      t.string :company
      t.string :designation

      t.timestamps
    end
  end
end
