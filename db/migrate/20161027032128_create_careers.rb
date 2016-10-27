class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
