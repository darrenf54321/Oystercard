
require './lib/journey'
journey = Journey.new
journey.start_journey({name: "London", zone: 1})
journey.finish_journey({name: "Exeter", zone: 3})
journey


double(:station, name: 'London', zone: 1)
