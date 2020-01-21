class Bus

    attr_reader :route_no, :destination

  def initialize(route_no, destination)
    @route_no = route_no
    @destination = destination
    @passengers = []
  end

  def bus_noise()
    return "Brum Brum"
  end

  def count_passengers()
    return @passengers.count()

  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus
    @passengers.clear()
  end
  def pick_up_from_stop(stop)
    for person in stop.queue()
      pick_up(person)
    end
    stop.clear_queue()
  end

  # def pick_up_from_stop(stop)
  #   for person in stop.queue()
  #     pick_up(person)
  #   end
  #   stop.clear_queue()
  # end


end
