class Schemas::Player
  include ArDocStore::EmbeddableModel

  attribute :name, as: :string
  attribute :nid, as: :string
  attribute :uid, as: :string

  validates_presence_of :name
end
