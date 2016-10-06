# class Station
#
# attr_reader :name, :zone
#
#   def initialize(name = "empty", zone = "empty")
#     @name = rail
#     @zone = zone
#   end
#
# end
# https://ruby-doc.org/core-2.2.0/Struct.html

Station = Struct.new :name, :zone
# 
#
# s1 = Station.new("london", 1)
# s2 = Station.new("clapham", 2)
#
# @journey.start_journey(s1)
#
# @journey.finish_jounrey(s2)
#
# @journey.travel_log.first
# => Station name: London , zone: 1
#
#
# @journey.calc_fare
#  => 1
