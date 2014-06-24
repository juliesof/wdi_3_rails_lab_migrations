class AddMileageAndMostRecentDateOfService < ActiveRecord::Migration
  def change
    change_table :tow_trucks do |t|
      t.integer :mileage
      t.date :most_recent_service
    end
  end
end
