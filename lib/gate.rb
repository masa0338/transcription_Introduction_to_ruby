class Gate

  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  def initialize(station)
    @station = station
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@station)
    distance = to - from
    FARES[distance - 1]
  end

  def enter(ticket)
    ticket.stamp @station
  end

  def exit(ticket)
    calc_fare(ticket) <= ticket.fare
  end

end