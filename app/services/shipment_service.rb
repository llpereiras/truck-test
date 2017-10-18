class ShipmentService

  def self.save(shipment_params)
    begin
      if shipment_params.try(:id)
        @shipment.update(shipment_params)
        return @shipment
      end
      contact = ContactService.save(shipment_params[:contact])
      origin = OriginService.save(shipment_params[:origin])
      destination = DestinationService.save(shipment_params[:destination])
      vehicles = tratar_vehicles(shipment_params)
      vehicles = TruckerService.create_vehicles(vehicles)
      new_shipment = shipment_params
      new_shipment[:contact] = contact
      new_shipment[:origin] = origin
      new_shipment[:destination] = destination
      new_shipment.delete('vehicles')
      @shipment = Shipment.new(new_shipment)
      vehicles.each do |trucker| 
        @shipment.truckers << trucker
      end
      @shipment.save
      @shipment
    rescue => e
      stack = e.backtrace.each { |line| puts line } if Rails.env == 'development'
      return {id: 0, error: e.message, stack: stack.to_s }
    end
  end

  def self.tratar_vehicles(params)
    vehicles = []
    params[:vehicles].each do |vehicle|
      vehicle["name"]  = params[:contact]["name"]
      vehicle["phone"]  = params[:contact]["phone"]
      vehicles << vehicle
    end
    vehicles
  end

end
