class Events::ProjectileCreated < Event
  embeds_one :projectile, class_name: 'Schemas::Projectile'
  embeds_one :unit, class_name: 'Schemas::Unit'

  validates_presence_of :projectile, :unit
end
