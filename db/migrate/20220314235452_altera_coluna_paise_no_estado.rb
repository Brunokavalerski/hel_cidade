class AlteraColunaPaiseNoEstado < ActiveRecord::Migration
  def change
    add_column :estados, :paise_id, :integer
  end
  end