class RemoveColumnFromTableMigration < ActiveRecord::Migration[7.0]
  def change
    remove_column :business_verifications, :website
  end
end
