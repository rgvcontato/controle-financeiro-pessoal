class CreateLancamentos < ActiveRecord::Migration
  def change
    create_table :lancamentos do |t|
      t.string :descricao, :null => false
      t.decimal :valor, :precision => 2, :null => false
      t.date :date, :null => false
      t.references :centro_de_custo

      t.timestamps
    end
    add_index :lancamentos, :centro_de_custo_id
  end
end
