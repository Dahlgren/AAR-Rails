class Schemas::VehicleSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  attribute :position
  attribute :side
  attribute :simulation
end
