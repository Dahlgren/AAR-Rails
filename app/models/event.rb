class Event < ApplicationRecord
  include ArDocStore::Model

  belongs_to :mission
end
