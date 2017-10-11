class Shipment < ApplicationRecord
  belongs_to :contact
  belongs_to :origin
  belongs_to :destination
  has_and_belongs_to_many :vehicles
end
