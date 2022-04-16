class AddColumnsToTables < ActiveRecord::Migration[7.0]
  def change
    add_column :identity_verifications, :dob, :string
    add_column :business_verifications, :website, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
