class Oystercard
DEFAULT_BALANCE = 0.0
MINIMUM_CHARGE = 1.0

  attr_reader :entry_station, :exit_station, :travel_log

  def initialize
    @balance = DEFAULT_BALANCE
    @in_use = false
    @entry_station = nil
    @exit_station = nil
    
    @travel_log = []
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
    @balance = @balance - amount
  end
=begin
  def touch_in?(entry_station)
    if (@balance < 1.0)
      "Not enough funds on card."
    else
    @entry_station = entry_station
    @in_use = true
    end
  end

  def touch_out?(exit_station)
    @balance = @balance - MINIMUM_CHARGE
    @exit_station = exit_station
    create_journey
    @in_use = false
  end

  def in_journey?
    !!@in_use
  end
  
  private
  
   def create_journey
    last_journey = Hash.new
    last_journey[:entry_station] = @entry_station
    last_journey[:exit_station] = @exit_station
    @travel_log << last_journey
   end
=end
end
