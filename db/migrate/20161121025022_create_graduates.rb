class CreateGraduates < ActiveRecord::Migration[5.0]
  def change
    create_table :graduates do |t|
      t.references :career, foreign_key: true
      t.string :nombre_egresado
      t.string :apellido_paterno_egresado
      t.string :apellido_materno_egresado
      t.string :sexo_egresado
      t.text :colonia_egresado
      t.text :calle_egresado
      t.string :codigo_postal_egresado
      t.string :celular_egresado
      t.string :otro_telefono_egresado
      t.string :correo_electronico_egresado
      t.string :status_egresado

      t.timestamps
    end
  end
end
