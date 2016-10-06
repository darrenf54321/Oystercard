require './lib/oyster_card'
require './lib/journey'
card = Oystercard.new
card.topup(5.00)
card.touch_in("Exeter")
card.touch_in("Balham")
card.touch_out("London")
card.touch_in("Balham")
card.touch_out("Tooting")
card
