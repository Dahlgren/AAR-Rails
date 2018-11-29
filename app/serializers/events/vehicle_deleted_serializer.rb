class Events::VehicleDeletedSerializer < EventSerializer
  has_one :vehicle
end
