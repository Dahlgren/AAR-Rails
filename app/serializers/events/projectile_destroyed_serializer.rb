class Events::ProjectileDestroyedSerializer < EventSerializer
  has_one :projectile
end
