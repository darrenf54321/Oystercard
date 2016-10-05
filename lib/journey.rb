class Journey

=begin
    attr_reader :entry_station

    def initialize(entry_station = "Manchester")
    @entry_station = nil
    end

    def start_journey(entry_station)
    @entry_station = entry_station
    end
=end
end