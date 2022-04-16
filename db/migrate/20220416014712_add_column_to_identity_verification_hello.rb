class AddColumnToIdentityVerificationHello < ActiveRecord::Migration[7.0]
  def change
    change_column :identity_verifications, :dob, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
