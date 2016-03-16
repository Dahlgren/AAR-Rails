class Schemas::Unit
  include ArDocStore::EmbeddableModel

  attribute :id, as: :string
  attribute :life_state, as: :string
  attribute :name, as: :string
  attribute :side, as: :string
  embeds_one :position, class_name: 'Schemas::Position'

  validates_presence_of :id, :life_state, :name, :position, :side
end
