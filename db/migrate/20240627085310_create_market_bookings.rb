class CreateMarketBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :market_bookings do |t|
      t.references :market, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.text :special_requirements

      t.timestamps
    end
  end
end
