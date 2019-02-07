# In spec/borisbike_spec.rb
require 'docking_station.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_empty_bike}
  it {is_expected.to respond_to :dock_bike}

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock_bike(bike)
      end
      expect{ subject.dock_bike(bike) }.to raise_error 'Docking station full'
    end
  end

  describe '#release bike'do
  it 'raises error' do
    docking_station = DockingStation.new
    expect{docking_station.release_empty_bike}.to raise_error 'Error, no bikes available!'
  end

end

  describe '#docks a bike' do
    it 'raises an exception' do
      docking_station = DockingStation.new
      docking_station.capacity.times { docking_station.dock_bike Bike.new }
      bike2 = Bike.new
      expect{docking_station.dock_bike(bike2)}.to raise_error 'Docking station full'
    end
    it 'stores broken and not broken bikes' do
      docking_station = DockingStation.new
      bike = Bike.new
      bike.broken_bike
      expect{docking_station.dock_bike(bike).to include bike}
    end
  end

  it 'does not release broken bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect{docking_station.release_broken_bike(bike)}.to raise_error 'Broken bike'
  end

  it 'shows docked bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(docking_station.stored_bikes).to include bike
  end
end
