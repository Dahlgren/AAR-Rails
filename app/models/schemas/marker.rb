class Schemas::Marker
  include ArDocStore::EmbeddableModel

  json_attribute :id, as: :string
  json_attribute :alpha, as: :string
  json_attribute :brush, as: :string
  json_attribute :color, as: :string
  embeds_one :position, class_name: 'Schemas::Position'
  json_attribute :shape, as: :string
  embeds_one :size, class_name: 'Schemas::MarkerSize'
  json_attribute :text, as: :string
  json_attribute :type, as: :string

  validates_presence_of :id, :alpha, :brush, :color, :position, :shape, :size, :text, :type
end
