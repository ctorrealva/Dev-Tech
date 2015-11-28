class CreateParametros < ActiveRecord::Migration
  def change
    create_table :parametros do |t|
      t.integer :IdParametro
      t.text :Placa
      t.date :FechaVenceSoat
      t.date :FechaVenceRevTec

      t.timestamps null: false
    end
  end
end
