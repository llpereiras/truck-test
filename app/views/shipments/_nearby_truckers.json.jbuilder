json.truckers do
  json.id trucker.id
  json.name trucker.name
  json.phone trucker.phone
  json.vehicle do
     json.type trucker.type.humanize
     json.body_type trucker.body_type
  end
end