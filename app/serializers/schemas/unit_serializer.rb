class Schemas::UnitSerializer < ActiveModel::Serializer
  attribute :id
  attribute :life_state
  attribute :name
  attribute :position
  attribute :side
end
