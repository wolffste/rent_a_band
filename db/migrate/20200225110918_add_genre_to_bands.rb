class AddGenreToBands < ActiveRecord::Migration[5.2]
  def change
    add_reference :bands, :genre, foreign_key: true
  end
end
