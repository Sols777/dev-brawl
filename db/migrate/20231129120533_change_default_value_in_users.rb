class ChangeDefaultValueInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :achievements, "Begginer"
  end
end
