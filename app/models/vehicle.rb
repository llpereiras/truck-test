class Vehicle < ApplicationRecord

  enum type: [:truck]
  enum body_type: ['Baú', 'Sider']

  has_and_belongs_to_many :shipments

  self.inheritance_column = "inheritance_type"

end
