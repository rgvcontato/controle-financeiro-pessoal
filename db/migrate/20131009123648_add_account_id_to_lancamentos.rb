class AddAccountIdToLancamentos < ActiveRecord::Migration
  def change
    add_column :lancamentos, :account_id, :integer

  end
end
