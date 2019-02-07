require './lib/docking_station'

docking_station = DockingStation.new 30 #creating a station, stting default capacity
bike = Bike.new
DockingStation::DEFAULT_CAPACITY.times { docking_station.dock_bike(bike) } # adding n bikes
bike.working? #return true
docking_station.stored_bikes #shows all available bikes
