#require 'oyster_card'
require 'station'

describe Station do
  #let(:station) { (Station.new) }


  it "knows which zone the station in" do
    station = Station.new("Manchester", 1)
    expect(station.zone).to eq  (1)
  end

  it "knows the name of the station" do
    station = Station.new("Manchester", 1)
    expect(station.name).to eq  ("Manchester")
  end

end
