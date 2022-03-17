class AlteraColunaCidadeEmBairro < ActiveRecord::Migration
  def change
    add_column :bairros, :cidade_id, :integer
  end
  end