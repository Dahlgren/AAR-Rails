class Events::ProjectileCreatedSerializer < EventSerializer
  has_one :projectile
  has_one :unit, if: :has_unit?
  has_one :vehicle, if: :has_vehicle?

  def has_unit?
    object.unit && object.unit.id
  end

  def has_vehicle?
    object.vehicle && object.vehicle.id
  end
end
