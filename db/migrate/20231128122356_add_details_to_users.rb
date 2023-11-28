class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :achievements, :string
    add_reference :users, :language, null: false, foreign_key: true
  end
end
