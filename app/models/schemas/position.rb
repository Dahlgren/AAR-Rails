class Schemas::Position
  include ArDocStore::EmbeddableModel

  attribute :dir, as: :float
  attribute :x, as: :float
  attribute :y, as: :float
  attribute :z, as: :float

  validates_presence_of :dir, :x, :y, :z
end
