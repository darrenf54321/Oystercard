require './lib/oystercard'
card = Oystercard.new
card.top_up(5.00)
card.touch_in("Victoria")
card.touch_out("Balham")
card
