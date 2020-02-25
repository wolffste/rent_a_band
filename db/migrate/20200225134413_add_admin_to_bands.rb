class AddAdminToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :admin, :boolean
  end
end
