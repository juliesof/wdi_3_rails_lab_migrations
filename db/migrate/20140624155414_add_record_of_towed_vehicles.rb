class AddRecordOfTowedVehicles < ActiveRecord::Migration
  def change
    change_table :vehicles do |t|
      t.date :picked_up_at
    end
  end
end
