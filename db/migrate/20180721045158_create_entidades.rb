class CreateEntidades < ActiveRecord::Migration[5.1]
  def change
    create_table :entidades do |t|
      t.string :nombre
      t.string :rfc
      t.string :curp
      t.string :direccion
      t.string :no_ext
      t.string :no_int
      t.string :delegacion
      t.string :colonia
      t.string :estado
      t.string :pais
      t.string :codigo_postal
      t.string :telefono_1
      t.string :telefono_2
      t.string :telefono_3
      t.string :email
      t.string :contacto_1
      t.string :contacto_2
      t.references :tipo_entidad, foreign_key: true

      t.timestamps
    end
  end
end
