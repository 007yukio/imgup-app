class AddImgToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :image, :string
  end
end
