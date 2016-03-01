class Events::UnitPosition < Event
  embeds_one :player, class_name: 'Schemas::Player'
  embeds_one :unit, class_name: 'Schemas::Unit'

  validates_presence_of :player, :unit
end
