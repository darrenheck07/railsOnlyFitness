class CreateLatstraps3s < ActiveRecord::Migration[6.0]
  def change
    create_table :latstraps3s do |t|
      t.string :exercise
      t.string :reps
      t.integer :sets

      t.timestamps
    end
  end
end
