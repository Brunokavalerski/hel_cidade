class CreateCeps < ActiveRecord::Migration
  def change
    create_table :ceps do |t|
      t.integer :id, :null => false
      t.integer :cep, :null => false
      t.string :logradouro, :limit => 20, :null => false
      t.timestamps
    end
  end
end
