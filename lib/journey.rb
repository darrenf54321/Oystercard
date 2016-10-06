class Journey

  attr_reader :in_journey, :travel_log

  def initialize
    @in_journey =  nil
    @travel_log = []
  end

  def start_journey(start_station)
    @start_station = start_station
    @travel_log << start_station
    @in_journey = true
  end

  def in_journey?
      @in_journey
  end

  def finish_journey(exit_station)
    @exit_station = exit_station
    @in_journey = false
  end

  def calculate_fare
    Oystercard::MINIMUM_CHARGE * (@entry_station.zone - @exit_station.zone).abs
  end

end
