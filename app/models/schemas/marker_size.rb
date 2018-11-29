class Schemas::MarkerSize
  include ArDocStore::EmbeddableModel

  json_attribute :height, as: :float
  json_attribute :width, as: :float

  validates_presence_of :height, :width
end
