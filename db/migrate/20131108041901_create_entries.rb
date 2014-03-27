class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :description
      t.float :value
      t.string :type
      t.references :account

      t.timestamps
    end
  end
end
