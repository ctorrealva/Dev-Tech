class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :license
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :class
      t.string :category

      t.timestamps null: false
    end
  end
end
