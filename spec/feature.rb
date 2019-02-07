#irb
require './lib/docking_station'
station = DockingStation.new #creating a station
@capacity(capacity = 20) # default 20 unless stated otherwise
DEFAULT_CAPACITY.times { station.dock Bike.new } # adding n bikes
bike = station.release_bike #fails if no bikes available
bike.working? #return true
station.dock_bike(bike) #returns bike
station.stored_bike #shows all available bikes
