class Schemas::Projectile
  include ArDocStore::EmbeddableModel

  attribute :id, as: :string
  attribute :side, as: :string
  attribute :simulation, as: :string
  embeds_one :position, class_name: 'Schemas::Position'

  validates_presence_of :id, :position, :side
end
