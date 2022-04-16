class AddColumnToIdentityVerification < ActiveRecord::Migration[7.0]
  def change
    add_column :identity_verifications, :dob, :duedate
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
