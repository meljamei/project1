class AddCoverImageToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :cover_image, :text
  end
end
