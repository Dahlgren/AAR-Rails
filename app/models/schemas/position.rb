class Schemas::Position
  include ArDocStore::EmbeddableModel

  attribute :x, as: :float
  attribute :y, as: :float
  attribute :z, as: :float

  validates_presence_of :x, :y, :z
end
