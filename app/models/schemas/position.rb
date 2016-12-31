class Schemas::Position
  include ArDocStore::EmbeddableModel

  json_attribute :dir, as: :float
  json_attribute :x, as: :float
  json_attribute :y, as: :float
  json_attribute :z, as: :float

  validates_presence_of :dir, :x, :y, :z
end
