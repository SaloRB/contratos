class CreateTipoEntidades < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_entidades do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
