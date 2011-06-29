class CreateProductos < ActiveRecord::Migration
  def self.up
    create_table :productos do |t|
      t.integer :categoria_id
      t.string :titulo, :limit => 100, :null => false
      t.text :contenido
      t.timestamps
    end
  end

  def self.down
    drop_table :productos
  end
end
