class CreateCategoriesImages < ActiveRecord::Migration
  def change
    create_table :categories_images do |t|
      t.integer :category_id
      t.integer :image_id
    end
  end
end
