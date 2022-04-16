class RemoveColumnFrom < ActiveRecord::Migration[7.0]
  def change
    add_column :business_verifications, :website, :string
    add_column :business_verifications, :phone, :string
    add_column :business_verifications, :address, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end