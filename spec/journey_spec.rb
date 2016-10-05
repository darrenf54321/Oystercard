=begin Let's create a new Journey class.
       It should be responsible for starting a journey, finishing a journey, calculating the fare of a journey.
       It should also return whether or not the journey is complete.
=end

require 'journey'
require 'station'
require 'oyster_card'

describe Journey do
  
  let(:entry_station) {Station.new(name: "London", zone: "Zone 1")}
  let(:exit_station) {Station.new(name: "Manchester", zone: "Zone 2")}
  subject { described_class.new(entry_station) }

  it "should start a journey" do
    expect(subject).to be_in_journey
  end
  
   it "should end a journey" do
    subject.finish_journey(exit_station)
    expect(subject).not_to be_in_journey
  end
  
end