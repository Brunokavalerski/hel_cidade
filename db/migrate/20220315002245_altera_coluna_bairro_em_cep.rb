class AlteraColunaBairroEmCep < ActiveRecord::Migration
  def change
    add_column :ceps, :bairro_id, :integer
  end
  end