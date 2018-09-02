class CreateTipoServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_servicios do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
