class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :cpf
      t.string :truck_type
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
