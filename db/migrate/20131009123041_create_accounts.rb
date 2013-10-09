class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :desciption
      t.string :type
      t.decimal :initialbalance
      t.string :status

      t.timestamps
    end
  end
end
