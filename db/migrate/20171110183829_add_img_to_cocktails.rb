class AddImgToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :img_url, :string
  end
end
