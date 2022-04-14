class CreateBusinessVerifications < ActiveRecord::Migration[7.0]
  def change
    create_table :business_verifications do |t|
      t.references :merchant, null: false, foreign_key: true
      t.string :business_name
      t.string :ein

      t.timestamps
    end
  end
end
