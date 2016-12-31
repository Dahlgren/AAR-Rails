class Schemas::Projectile
  include ArDocStore::EmbeddableModel

  json_attribute :id, as: :string
  json_attribute :side, as: :string
  json_attribute :simulation, as: :string
  embeds_one :position, class_name: 'Schemas::Position'

  validates_presence_of :id, :position, :side
end
