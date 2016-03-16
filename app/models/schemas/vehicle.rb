class Schemas::Vehicle
  include ArDocStore::EmbeddableModel

  attribute :id, as: :string
  attribute :name, as: :string
  attribute :side, as: :string
  attribute :simulation, as: :string
  embeds_one :position, class_name: 'Schemas::Position'

  validates_presence_of :id, :name, :position, :side, :simulation
end
