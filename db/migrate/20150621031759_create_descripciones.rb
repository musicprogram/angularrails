class CreateDescripciones < ActiveRecord::Migration
  def change
    create_table :descripciones do |t|
      t.string :titulo
      t.integer :total_unidades
      t.integer :ganancias

      t.references :producto, index: true

      t.timestamps null: false
    end
  end
end
