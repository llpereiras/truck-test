json.truckers(@truckers) do |trucker|
  json.id trucker.id
  json.name trucker.name
  json.phone trucker.phone
  json.vehicle do |vehicle|
     json.phone vehicle.type
     json.phone vehicle.body_type
  end
end