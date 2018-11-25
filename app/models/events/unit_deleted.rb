class Events::UnitDeleted < Event
  embeds_one :unit, class_name: 'Schemas::Unit'

  validates_presence_of :unit
end
