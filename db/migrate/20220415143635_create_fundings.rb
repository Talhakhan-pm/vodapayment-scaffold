class CreateFundings < ActiveRecord::Migration[7.0]
  def change
    create_table :fundings do |t|
      t.string :title
      t.string :checking_num
      t.string :routing_num

      t.timestamps
    end
  end
end
