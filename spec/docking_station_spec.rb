# In spec/borisbike_spec.rb
require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  #it 'release_bike' do
  #it {expect(DockingStation).to respond_to (:release_bike)}
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to :dock_bike}

  it 'releases a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(docking_station.release_bike).to be_a(Bike)
  end

  describe '#release_bike'do
  it 'raises error' do
  docking_station = DockingStation.new
  expect{docking_station.release_bike}.to raise_error(RuntimeError)
  end
  end

  it 'docks a bike' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock_bike(bike)).to include bike
  end

  describe '#docks a bike' do
    it 'raises an exception' do
      station = DockingStation.new
      20.times { station.dock_bike Bike.new }
      bike2 = Bike.new
      expect{station.dock_bike(bike2)}.to raise_error 'Error, Another bike already docked'
    end
  end

  it 'shows docked bike' do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    expect(station.stored_bikes).to include bike
  end
end
