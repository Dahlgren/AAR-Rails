class Schemas::PositionSerializer < ActiveModel::Serializer
  attribute :dir
  attribute :x
  attribute :y
  attribute :z
end
