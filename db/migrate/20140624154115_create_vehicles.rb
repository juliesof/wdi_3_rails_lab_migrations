class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.text :make, null: false
      t.text :model, null: false
      t.text :vin, null: false
      t.date :acquired_on
      t.text :notes
      t.boolean :is_tow_truck, default: false, null:false

      t.index :vin, unique: true
    end
  end
end

# make, model, and color (text), year (integer), VIN (unique non-nullable indexed text), an acquisition date, a text field for notes, and a boolean indicating whether this vehicle is a tow truck or a towed vehicle.
