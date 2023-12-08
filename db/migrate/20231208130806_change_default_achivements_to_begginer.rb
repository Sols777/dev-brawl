class ChangeDefaultAchivementsToBegginer < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :achievements, "beginner"
  end
end
