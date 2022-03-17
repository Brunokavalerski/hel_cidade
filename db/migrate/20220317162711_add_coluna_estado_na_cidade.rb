class AddColunaEstadoNaCidade < ActiveRecord::Migration
  def change
    add_column :cidades, :estado_id, :integer
  end
end