class Station

attr_reader :rail, :zone

  def initialize(rail = "empty", zone = "empty")
    @rail = rail
    @zone = zone
  end

end
