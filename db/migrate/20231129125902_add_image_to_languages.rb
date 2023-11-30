class AddImageToLanguages < ActiveRecord::Migration[7.1]
  def change
    add_column :languages, :image, :string
  end
end
