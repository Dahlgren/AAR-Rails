class Schemas::Unit
  include ArDocStore::EmbeddableModel

  attribute :id, as: :string
  attribute :name, as: :string
  embeds_one :position, class_name: 'Schemas::Position'

  validates_presence_of :id, :name, :position
end
