class AddLimitToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :limit, :decimal

  end
end
