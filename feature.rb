require './lib/oyster_card'
card = Oystercard.new
card.topup(40)
card.touch_in?("London")
card.touch_out?("Liverpool")
card.touch_out?("Manchester")
card.touch_out?("Leeds")
card.touch_in?("Birmingham")
card