class Events::MarkerDeleted < Event
  embeds_one :marker, class_name: 'Schemas::Marker'

  validates_presence_of :marker
end
