class CreateEstadoServicios < ActiveRecord::Migration
  def change
    create_table :estado_servicios do |t|
      t.integer :IdEstadoServicio
      t.text :Descripcion

      t.timestamps null: false
    end
  end
end
