class CreateCentroDeCustos < ActiveRecord::Migration
  def change
    create_table :centro_de_custos do |t|
      t.string :nome
      t.string :tipo

      t.timestamps
    end
  end
end
