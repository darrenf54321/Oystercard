=begin Let's create a new Journey class.
       It should be responsible for starting a journey, finishing a journey, calculating the fare of a journey.
       It should also return whether or not the journey is complete.
=end

require 'journey'

describe Journey do
    
    describe 'start_journey' do
      it 'has an entry station' do
      journey = Journey.new
      expect(subject.start_journey).to eq "Manchester"
      end
end
    
end

