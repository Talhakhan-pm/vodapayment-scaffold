class RemoveColumnFromTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :identity_verifications, :dob
  end
end
