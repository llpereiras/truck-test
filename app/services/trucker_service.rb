class TruckerService
  def self.save(trucker)
    if not trucker.try(:id)
      if trucker['vehicle']
        trucker['type'] = trucker['vehicle']['type']
        trucker['body_type'] = trucker['vehicle']['body_type']
        trucker.delete('vehicle')
      end
      new_trucker = create_trucker(trucker)
      new_contact = ContactService.save(trucker)
      new_trucker.contacts << new_contact
      return new_trucker
    end
    trucker.update(trucker)
  end

  def self.create_vehicles(vehicles)
    new_vehicles = []
    vehicles.each do |trucker|
      new_vehicles << create_trucker(trucker)
    end
    new_vehicles
  end

  def self.create_trucker(trucker)
    trucker['type'] = Trucker.types[trucker['type'].parameterize.downcase]
    trucker['body_type'] = Trucker.body_types[trucker['body_type']]
    Trucker.create(trucker)
  end


end