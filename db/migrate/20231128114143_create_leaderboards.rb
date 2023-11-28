class CreateLeaderboards < ActiveRecord::Migration[7.1]
  def change
    create_table :leaderboards do |t|
      t.integer :ranking
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
