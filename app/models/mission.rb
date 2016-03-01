class Mission < ApplicationRecord
  has_many :events, dependent: :destroy
end
