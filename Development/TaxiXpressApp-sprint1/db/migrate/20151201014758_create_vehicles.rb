class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :plaque
      t.date :soat_due_date
      t.date :technical_review_due_date

      t.timestamps null: false
    end
  end
end
