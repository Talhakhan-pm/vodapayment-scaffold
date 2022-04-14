class CreateBasicVerifications < ActiveRecord::Migration[7.0]
  def change
    create_table :basic_verifications do |t|
      t.references :merchant, null: false, foreign_key: true
      t.string :address_1
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
