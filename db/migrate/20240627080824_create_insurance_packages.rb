class CreateInsurancePackages < ActiveRecord::Migration[7.1]
  def change
    create_table :insurance_packages do |t|
      t.string :name
      t.decimal :base_premium

      t.timestamps
    end
  end
end
