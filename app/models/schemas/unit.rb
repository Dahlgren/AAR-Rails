class Schemas::Unit
  include ArDocStore::EmbeddableModel

  attribute :name, as: :string
  embeds_one :position, class_name: 'Schemas::Position'

  validates_presence_of :name, :position
end
