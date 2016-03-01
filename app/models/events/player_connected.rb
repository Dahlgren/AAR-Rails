class Events::PlayerConnected < Event
  embeds_one :player, class_name: 'Schemas::Player'

  validates_presence_of :player
end
