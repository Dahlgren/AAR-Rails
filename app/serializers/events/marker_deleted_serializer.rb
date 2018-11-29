class Events::MarkerDeletedSerializer < EventSerializer
  has_one :marker
end
