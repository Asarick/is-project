class CreateInsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :insurances do |t|
      t.references :farmer, null: false, foreign_key: true
      t.references :crop, null: false, foreign_key: true
      t.references :insurance_package, null: false, foreign_key: true
      t.references :premium_type, null: false, foreign_key: true
      t.decimal :acreage, null: false
      t.decimal :total_premium, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :policy_number, null: false

      t.timestamps
    end
    add_index :insurances, :policy_number, unique: true
  end
end