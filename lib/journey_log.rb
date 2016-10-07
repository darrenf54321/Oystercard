require_relative 'journey'



class JourneyLog
  PENALTY_FARE = 6

  attr_reader :journey_class, :journey, :journeys, :exit_station, :entry_station

    def initialize
      @entry_station = nil
      @exit_station = nil
      @journey_class = journey_class
      @journeys = []
      @journey = Journey.new
    end

    def start(entry_station)
      @journey.start(entry_station)
      #@journey.add_journey
    end

    def finish(exit_station)
      @journey.finish(exit_station)
      @journey.add_journey
    end


    def reset
      @entry_station = nil
      @exit_station = nil
    end

end
