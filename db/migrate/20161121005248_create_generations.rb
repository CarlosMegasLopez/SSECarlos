class CreateGenerations < ActiveRecord::Migration[5.0]
  def change
    create_table :generations do |t|
      t.references :career, foreign_key: true
      t.string :descripcion_generacion

      t.timestamps
    end
  end
end
