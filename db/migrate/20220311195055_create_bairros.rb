class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.integer :id, :null => false
      t.string :nome, :limit => 20, :null => false

      t.timestamps
    end
  end
end
