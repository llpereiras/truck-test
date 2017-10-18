json.extract! shipment, :id

json.shipment do
  json.value shipment.value
  json.weight_kg shipment.weight_kg
  json.contact shipment.contact, partial: 'contacts/contact', as: :contact
  json.vehicles shipment.truckers, partial: 'vehicles/vehicle', as: :vehicle
  json.origin shipment.origin, partial: 'origins/origin', as: :origin
  json.destination shipment.destination, partial: 'destinations/destination', as: :destination
end
