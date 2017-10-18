class CreateShipmentsTruckers < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments_truckers do |t|
      t.references :shipment, foreign_key: true
      t.references :trucker, foreign_key: true
    end
  end
end
