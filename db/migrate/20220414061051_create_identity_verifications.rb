class CreateIdentityVerifications < ActiveRecord::Migration[7.0]
  def change
    create_table :identity_verifications do |t|
      t.references :merchant, null: false, foreign_key: true
      t.string :ssn

      t.timestamps
    end
  end
end
