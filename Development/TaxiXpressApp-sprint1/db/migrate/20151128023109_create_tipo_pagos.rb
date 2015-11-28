class CreateTipoPagos < ActiveRecord::Migration
  def change
    create_table :tipo_pagos do |t|
      t.string :CodigoTipoPago
      t.text :Descripcion

      t.timestamps null: false
    end
  end
end
