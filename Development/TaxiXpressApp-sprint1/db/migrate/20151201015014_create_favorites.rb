class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :name
      t.references :client, index: true, foreign_key: true
      t.string :source
      t.string :destination

      t.timestamps null: false
    end
  end
end
