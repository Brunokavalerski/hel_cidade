class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nome, :limit => 20, :null => false
      t.string :sigla, :limit => 2, :null => false
      t.timestamps
    end
  end
end
