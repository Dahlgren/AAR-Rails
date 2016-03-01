class Schemas::Position
  include ArDocStore::EmbeddableModel

  attribute :x, as: :float
  attribute :y, as: :float
  attribute :z, as: :float
end
