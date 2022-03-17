class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome, :limit => 20, :null => false
      t.string :estado, :limit => 2, :null => false
      t.integer :habitantes
      t.timestamps
    end
  end
end
