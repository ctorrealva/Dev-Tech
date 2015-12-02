class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :client, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true
      t.references :vehicle, index: true, foreign_key: true
      t.references :payment_type, index: true, foreign_key: true
      t.string :source
      t.string :destination
      t.datetime :date_hour
      t.references :service_state, index: true, foreign_key: true
      t.integer :score
      t.text :comment
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
