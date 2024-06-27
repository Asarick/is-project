class CreateMarkets < ActiveRecord::Migration[7.1]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :location
      t.string :open_days

      t.timestamps
    end
  end
end
