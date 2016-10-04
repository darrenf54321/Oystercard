require 'oyster_card'

describe Oystercard do
  let(:card) { (Oystercard.new) }

  let(:entry_station) {double :station}
  let(:exit_station) {double :station}

  it { is_expected.to respond_to :check_balance}

  it "checks that opening balance = 0" do
  expect(Oystercard::DEFAULT_BALANCE).to eq(0)
  end

  it "checks that a newly created card has a balance of 0" do
    expect(card.check_balance).to eq 0
  end

  it "tops up the card with additional funds, and increases the balance by that amount" do
    card.topup(10)
    expect(card.check_balance).to eq 10
  end

  it "sets a maximum topup limit of 90 pounds sterling" do
    card.topup(90)
    expect(card.topup(1)).to eq "Error, this will exceed the £90 maximum balance."
  end

  it "will reduce the card's balance when money is withdrawn or used" do
    card.topup(45)
    card.deduct(10)
    expect(card.check_balance).to eq(35)
  end

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



end
