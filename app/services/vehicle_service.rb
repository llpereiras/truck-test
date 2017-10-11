class VehicleService
  def self.save(vehicles)
    new_vehicles = []
    vehicles.each do |vehicle|
      new_vehicles << create_vehicle(vehicle)
    end
    new_vehicles
  end

  def self.create_vehicle(vehicle)
    vehicle["type"] = Vehicle.types[vehicle["type"].parameterize.downcase]
    vehicle["body_type"] = Vehicle.body_types[vehicle["body_type"]]
    Vehicle.create!(vehicle)
  end
end