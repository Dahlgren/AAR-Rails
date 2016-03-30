class Events::ProjectileCreated < Event
  embeds_one :projectile, class_name: 'Schemas::Projectile'
  embeds_one :unit, class_name: 'Schemas::Unit'
  embeds_one :vehicle, class_name: 'Schemas::Vehicle'

  validates_presence_of :projectile

  def validate_embedded_record_for_unit
    unit = nil unless unit && unit.valid?
  end

  def validate_embedded_record_for_vehicle
    vehicle = nil unless vehicle && vehicle.valid?
  end
end
