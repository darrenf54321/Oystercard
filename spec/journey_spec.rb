=begin Let's create a new Journey class.
       It should be responsible for starting a journey, finishing a journey, calculating the fare of a journey.
       It should also return whether or not the journey is complete.
=end

require 'journey'
require 'card'

describe Journey do

  describe 'initialize' do

    it "will know when the card has been used to touch-in" do
      card.topup(1.0)
      expect(card.touch_in?(entry_station)).to eq true
    end

    it "will remember the station the card was touched-in" do
      card.topup(50.00)
      subject.touch_in?(entry_station)
      expect(subject.entry_station).to eq entry_station
      end
    end

  describe 'penalty' do
      it 'will charge a penalty fare if a station is not tapped' do
      journey = Journey.new
      expect(journey.penalty).to eq 10.00
    end
  end

end
