class RenameColumnCategoryToGenre < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :category, :genre
  end
end
