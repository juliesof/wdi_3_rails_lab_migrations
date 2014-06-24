class AddVehicleTypeIndex < ActiveRecord::Migration
  def change
    change_table :vehicles do |t|
      t.index :vehicle_type
    end

    change_column_null :vehicles, :vehicle_type, false
  end
end


