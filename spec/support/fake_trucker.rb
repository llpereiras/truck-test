class FakeTrucker

  def self.get_post_content
    {
      "trucker": {
          "name": "Lincoln Falcão",
          "phone": "(11) 97654-3210",
          "vehicle": {
              "type": "Truck", "body_type": "Baú"
          }
      }
    }
  end

  def self.get_last_location_content
    {
      "location": {
          "city": "São Paulo",
          "state": "SP"
      }
    }
  end

end