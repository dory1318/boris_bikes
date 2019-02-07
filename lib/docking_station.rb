require_relative 'bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity
  attr_reader :stored_bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @stored_bikes = []
  end


  def release_empty_bike
      fail 'Error, no bikes available!' if empty?
      @stored_bikes.pop
  end

  def release_broken_bike(bike)
    fail 'Broken bike' if bike.broken_bike
    bike
  end


  def dock_bike (bike)
    fail 'Docking station full' if full?
    bike.broken_bike == true || false
    @stored_bikes << bike
  end

private

  def full?
    @stored_bikes.count >= capacity
  end

  def empty?
    @stored_bikes.empty?
  end
end
