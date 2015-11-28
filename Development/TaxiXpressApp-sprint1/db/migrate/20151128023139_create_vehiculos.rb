class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.integer :IdVehiculo
      t.text :Placa
      t.date :FechaVenceSoat
      t.date :FechaVenceRevTec

      t.timestamps null: false
    end
  end
end
