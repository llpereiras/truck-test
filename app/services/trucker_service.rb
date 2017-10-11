class TruckerService
  def self.save(truck)
    if not shipment_params.try(:id)
      vehicle = VehicleService.create_vehicle(truck["vehicle"])
      truck["vehicle"] = vehicle
      Trucker.create(truck)
    end
    truck.update(truck)
  end
end