class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :Precio
      t.integer :Cantidad

      t.timestamps null: false
    end
  end
end
