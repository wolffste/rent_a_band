class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :description
      t.integer :fee
      t.boolean :availability, default: true
      t.string :band_email

      t.timestamps
    end
  end
end
