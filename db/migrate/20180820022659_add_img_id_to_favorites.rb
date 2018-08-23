class AddImgIdToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :image_id, :integer
  end
end
