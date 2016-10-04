class Oystercard
DEFAULT_BALANCE = 0.0
MINIMUM_CHARGE = 1.0

  attr_reader :entry_station, :exit_station, :travel_log

  def initialize
    @balance = DEFAULT_BALANCE
    @in_use = false
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

  def touch_in?(entry_station)
    if (@balance < 1.0)
      "Not enough funds on card."
    else
    @travel_log << entry_station
    @in_use = true
    end
  end

  def touch_out?(exit_station)
    @balance = @balance - MINIMUM_CHARGE
    @travel_log << exit_station
    @in_use = false
  end

  def in_journey?
    !!@in_use
  end



end
