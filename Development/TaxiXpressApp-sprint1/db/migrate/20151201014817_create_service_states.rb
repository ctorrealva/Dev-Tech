class CreateServiceStates < ActiveRecord::Migration
  def change
    create_table :service_states do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
