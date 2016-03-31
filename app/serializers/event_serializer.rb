class EventSerializer < ActiveModel::Serializer
  attribute :timestamp
  attribute :type

  def type
    object.type.sub('Events::', '')
  end
end
