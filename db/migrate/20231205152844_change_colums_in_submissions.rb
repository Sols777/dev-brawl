class ChangeColumsInSubmissions < ActiveRecord::Migration[7.1]
  def change
    add_column :submissions, :succeed, :boolean, default: false
    add_column :submissions, :time_taken, :float
    remove_column :submissions, :start_time
    remove_column :submissions, :end_time
    remove_column :submissions, :result
  end
end
