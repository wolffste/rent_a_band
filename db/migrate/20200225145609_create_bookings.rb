class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_fee
      t.boolean :confirmation_status
      t.references :band, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
