class RemoveLanguageRefFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_reference :users, :language, foreign_key: true
  end
end
