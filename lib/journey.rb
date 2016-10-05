class Journey
<<<<<<< HEAD

=begin
    attr_reader :entry_station
=======
>>>>>>> 6a627ad5348ed9d6d59a65c005bc8063dbaecda5

attr_accessor :entry_station, :exit_station

    def initialize
    @entry_station = nil
    @exit_station = nil
    end

    def touch_in?(entry_station)
        @entry_station = entry_station
    end

    def touch_out?(exit_station)
        @exit_station = exit_station
        create_journey
    end

    def create_journey
       last_journey = Hash.new
       last_journey[:entry_station] = @entry_station
       last_journey[:exit_station] = @exit_station
       @travel_log << last_journey
    end
<<<<<<< HEAD
=end
end
=======

    def penalty
        penalty = 10.00
    end


end


# require './lib/journey'
# journey = Journey.new
# journey.entry_station("Manchester")
# journey.exit_station("Birmingham")
# journey
>>>>>>> 6a627ad5348ed9d6d59a65c005bc8063dbaecda5
