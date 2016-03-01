class Events::PlayerDisconnected < Event
  embeds_one :player, class_name: 'Schemas::Player'

  validates_presence_of :player
end
