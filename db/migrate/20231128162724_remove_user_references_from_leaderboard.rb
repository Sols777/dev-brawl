class RemoveUserReferencesFromLeaderboard < ActiveRecord::Migration[7.1]
  def change
    remove_reference :leaderboards, :user, foreign_key: true
  end
end
