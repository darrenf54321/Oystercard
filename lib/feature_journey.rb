
require './lib/journey'
journey = Journey.new
journey.start_journey({name: "London", zone: 1})
journey.finish_journey("Exeter")
journey


double(:station, name: 'London', zone: 1)
