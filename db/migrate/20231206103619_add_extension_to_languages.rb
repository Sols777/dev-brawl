class AddExtensionToLanguages < ActiveRecord::Migration[7.1]
  def change
    add_column :languages, :extension, :string
    add_column :languages, :commment, :string
  end
end
