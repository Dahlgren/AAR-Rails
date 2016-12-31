class Schemas::Unit
  include ArDocStore::EmbeddableModel

  json_attribute :id, as: :string
  json_attribute :life_state, as: :string
  json_attribute :name, as: :string
  json_attribute :side, as: :string
  json_attribute :vehicle_id, as: :string
  embeds_one :position, class_name: 'Schemas::Position'

  validates_presence_of :id, :life_state, :name, :position, :side
end
