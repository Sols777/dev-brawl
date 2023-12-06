class RemoveActualPointsFromSubmission < ActiveRecord::Migration[7.1]
  def change
    remove_column :submissions, :actual_points
  end
end
