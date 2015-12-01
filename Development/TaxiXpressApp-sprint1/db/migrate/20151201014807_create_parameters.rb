class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :description
      t.string :value

      t.timestamps null: false
    end
  end
end
