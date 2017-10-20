class FakeShipment

  def self.get_post_content
    {
      "shipment": {
          "value": 1500.0,
          "weight_kg": 2000,
          "contact": {
              "name": "Carlos", "phone": "(11) 98765-4321"
          },
          "vehicles": [
              { "type": "Truck", "body_type": "Baú" },
              { "type": "Truck", "body_type": "Sider" }
          ],
          "origin": { "city": "São Paulo", "state": "SP", "load_at": "2017-09-25" },
          "destination": { "city": "Goiânia", "state": "GO", "deliver_at": "2017-09-29" },
      }
    }
  end

  def self.get_show_content
    {
      "id": 1,
      "shipment": {
          "value": "1500.0",
          "weight_kg": 2000,
          "contact": {
              "name": "Carlos", 
              "phone": "(11) 98765-4321"
          },
          "vehicles": [
              { "type": "Truck", "body_type": "Baú" },
              { "type": "Truck", "body_type": "Sider" }
          ],
          "origin": { "city": "São Paulo", "state": "SP", "load_at": "2017-09-25" },
          "destination": { "city": "Goiânia", "state": "GO", "deliver_at": "2017-09-29" },
      }
    }
  end

  def self.get_nearby_truckers_content
    {
        "truckers": [
            {
                "id": 1,
                "name": "Lincoln Falcão",
                "phone": "(11) 97654-3210",
                "vehicle": {
                    "type": "Truck", 
                    "body_type": "Baú"
                }
            }
        ]
    }
  end

end