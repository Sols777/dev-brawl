class CreateChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :challenges do |t|
      t.text :expected_result
      t.float :expected_time
      t.integer :expected_score
      t.string :category
      t.string :difficulty
      t.string :name
      t.text :content
      t.text :description
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
