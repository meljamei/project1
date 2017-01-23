class ChangeTitleToUrlInImages < ActiveRecord::Migration
  def change
    rename_column :images, :title, :url
  end
end
