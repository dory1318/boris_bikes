#irb
require './lib/docking_station'
station = DockingStation.new #creating a station
20.times { station.dock Bike.new } # adding 20 bikes
bike = station.release_bike #fails if no bikes available
bike.working? #return true
station.dock_bike(bike)
station.stored_bike
