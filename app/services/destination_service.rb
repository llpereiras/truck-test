class DestinationService
  def self.save(destination)
    Destination.create(destination)
  end
end