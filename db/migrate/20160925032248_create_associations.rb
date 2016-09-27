class CreateAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :associations do |t|
      t.string :nombre
      t.string :contacto
      t.string :telefono
      t.string :correo_electronico

      t.timestamps
    end
  end
end
