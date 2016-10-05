=begin Let's create a new Journey class.
       It should be responsible for starting a journey, finishing a journey, calculating the fare of a journey.
       It should also return whether or not the journey is complete.
=end

require 'journey'
require 'oystercard_spec'

describe Journey do
     let(:journey){ { in:entry_station, in:exit_station, in:card } }
     
     it "will know when the card has been used to touch-in" do
    card.topup(1.0)
    expect(card.touch_in?(entry_station)).to eq true
  end
  it "will remember the station the card was touched-in" do
    card.topup(50.00)
    subject.touch_in?(entry_station) do
    expect(subject.entry_station).to eq entry_station
    end
  end

  it "will know when the card has been used to touch-out" do
    expect(card.touch_out?(exit_station)).to eq false
  end
  it "will remember the station the card was touched-out" do
    subject.touch_out?(exit_station) do
      expect(subject.exit_station).to eq exit_station
    end
  end

  it "will know when the card is in journey" do
    card.topup(1.0)
    card.touch_in?(entry_station)
    expect(card.in_journey?).to eq true
  end

  it "will remember the last station of a journey" do
    subject.topup(5.0)
    subject.touch_in?(entry_station) do
    subject.touch_out?(exit_station) do
      expect(subject.exit_station).to eq exit_station
    end
    end
  end

  it "will remember the journey" do
    subject.topup(5.0)
    subject.touch_in?(entry_station) do
    subject.touch_out?(exit_station) do
      expect(subject.exit_station).to include travel_log
    end
    end
  end

  it "will onll allow a card to touch_in if it has a balance >= £1" do
  card.topup(0.5)
  expect(card.touch_in?(entry_station)).to eq "Not enough funds on card."
  end

  it "this will reduce the card balance by £1 on touch_out" do
    card1 = card.topup(1.0)
    subject.touch_in?(entry_station)
    expect{ subject.touch_out?(exit_station)}.to change{subject.check_balance}.by(-Oystercard::MINIMUM_CHARGE)
  end




=begin
    describe 'start_journey' do
      it 'has an entry station' do
      journey = Journey.new
      expect(subject.start_journey("Manchester")).to eq "Manchester"
      end
end
=end
end

