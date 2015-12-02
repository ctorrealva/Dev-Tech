class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :id_number
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :mobile_phone

      t.timestamps null: false
    end
  end
end
