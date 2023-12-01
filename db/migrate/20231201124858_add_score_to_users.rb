class AddScoreToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :score, :integer
  end
end
