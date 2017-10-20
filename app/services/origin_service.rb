class OriginService
  def self.save(origin)
    Origin.create(origin)
  end
end