class CreatePlanta < ActiveRecord::Migration[5.1]
  def change
    create_table :planta do |t|
      t.string :familia
      t.text :genero
      t.text :nombre
      t.integer :germinaciondias
      t.integer :altura
      t.decimal :precio

      t.timestamps
    end
  end
end
