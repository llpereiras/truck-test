class ShipmentService

  def self.save(shipment_params)
    begin
      contact = ContactService.save(shipment_params[:contact])
      origin = OriginService.save(shipment_params[:origin])
      destination = DestinationService.save(shipment_params[:destination])
      vehicles = VehicleService.save(shipment_params[:vehicles])
      new_shipment = shipment_params
      new_shipment[:contact] = contact
      new_shipment[:origin] = origin
      new_shipment[:destination] = destination
      new_shipment[:vehicles] = vehicles
      if not shipment_params.try(:id)
        @shipment = Shipment.new(new_shipment)
        @shipment.save
        @shipment
      end
      @shipment.update(shipment_params)
      @shipment
    rescue => e
      puts e.message
      return false
    end
  end

end
