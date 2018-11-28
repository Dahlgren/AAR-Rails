class Events::VehicleDeleted < Event
  embeds_one :vehicle, class_name: 'Schemas::Vehicle'

  validates_presence_of :vehicle
end
