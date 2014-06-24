class AddIsMotorcycle < ActiveRecord::Migration
  def change
    change_table :vehicles do |t|
      t.text :vehicle_type
    end
  end
end
