class CreateTowTrucksTableAndRemoveVehiclesTable < ActiveRecord::Migration
  def up
    change_table :vehicles do |t|
      t.remove :is_tow_truck
    end
  end

  def down
    change_table :vehicles do |t|
      t.boolean :is_tow_truck, default: false, null: false
    end
  end


  def change
    create_table :tow_trucks do |t|
      t.text :make, null: false
      t.text :model, null: false
      t.integer :year, null: false
      t.date :acquired_on
      t.text :notes
    end
  end

end
