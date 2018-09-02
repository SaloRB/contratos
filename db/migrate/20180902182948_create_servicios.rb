class CreateServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.references :tipo_servicio, foreign_key: true

      t.timestamps
    end
  end
end
