class AddCategoryToBands < ActiveRecord::Migration[5.2]
  def change
    add_reference :bands, :category, foreign_key: true
  end
end
