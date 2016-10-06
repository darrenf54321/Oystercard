=begin Let's create a new Journey class.
       It should be responsible for starting a journey, finishing a journey, calculating the fare of a journey.
       It should also return whether or not the journey is complete.
=end

require 'journey'
require 'station'
require 'oyster_card'

describe Journey do

  let(:journey) { (Journey.new) }

#It should be responsible for starting a journey
  it "should start a journey" do
    journey.start_journey("London")
    # expect(journey.travel_log).to include("London")
    expect(journey.in_journey).to be true
  end

#It should be responsible for finishing a journey
   it "should finish a journey" do
     journey.finish_journey("Exeter")
    expect(subject).not_to be_in_journey
  end

# It should also return whether or not the journey is complete.
  it "should return whether or not the journey is complete" do
    journey.finish_journey("Clapham")
    expect(journey.in_journey?).to eq false
  end

  it "should be responsible for calculating the fare of the journey" do

  end


end
