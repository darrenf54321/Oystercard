require_relative 'journey'
require_relative 'station'

class Oystercard
DEFAULT_BALANCE = 0.0
MINIMUM_CHARGE = 1.0

  attr_reader :entry_station, :exit_station, :travel_log

  def initialize(journey: Journey)
    @balance = DEFAULT_BALANCE
    @in_use = false
    @travel_log = []
    #@journey = journey.new
  end

  def check_balance
    @balance
  end

  def topup(funds)
    if (@balance + funds) > 90
    "Error, this will exceed the £90 maximum balance."
    else
    @balance = @balance + funds
    end
  end

  def deduct(amount)
    @balance -= amount
  end

  def touch_in(entry_station)
    if (@balance < 1.0)
      "Not enough funds on card."
    else
      @entry_station = entry_station
      travel_log << entry_station
      @in_use = true
      #@journey.start_journey(entry_station)
    end
  end

  def touch_out(exit_station)
    @exit_station = exit_station
    @balance -= 1
    travel_log << exit_station
    #@journey.finish_journey(exit_station)
    #@balance -= @journey.calculate_fare
    @in_use = false
  end

end
