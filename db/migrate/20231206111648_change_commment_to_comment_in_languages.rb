class ChangeCommmentToCommentInLanguages < ActiveRecord::Migration[7.1]
  def change
    rename_column :languages, :commment, :comment
  end
end
