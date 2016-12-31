class Schemas::Player
  include ArDocStore::EmbeddableModel

  json_attribute :name, as: :string
  json_attribute :uid, as: :string

  validates_presence_of :name
end
