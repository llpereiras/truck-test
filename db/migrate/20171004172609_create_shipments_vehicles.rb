class CreateShipmentsVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments_vehicles do |t|
      t.references :shipment, foreign_key: true
      t.references :vehicle, foreign_key: true
    end
  end
end
